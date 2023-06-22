class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy, :update_execrandom]


  # GET /tickets or /tickets.json
  def index
    if params[:status] == 'Open' || params[:status] == 'Closed'
      @tickets = Ticket.all.where(status: params[:status])
    else
      @tickets = Ticket.all
    end
    if params[:sort] == 'date'
      @tickets = Ticket.order(created_at: :desc)
    end
  end


 
  def upload_attachment
    @ticket = Ticket.find(params[:id])
    @ticket.attachments.attach(params[:ticket][:attachments])
  
    redirect_to @ticket, notice: 'File uploaded successfully.'
  end
  
  
  # GET /tickets/1 or /tickets/1.json
  def show
    @ticket = Ticket.find(params[:id])
    @comments = @ticket.comments
    @new_comment = Comment.new
    @attachments = @ticket.attachments

    authorize! :read, @ticket
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
    @ticket = Ticket.find(params[:id])
    authorize! :edit, @ticket
  end

  # POST /tickets or /tickets.json
  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user_id = current_user.id
    @ticket.executive_id = 1
    @ticket.supervisor_id = 1
    @ticket.status = 'Open'
    @ticket.priority = 'Low'
    usuarios_ejecutivos = User.where(role: "executive").count
    random_number = rand(1..usuarios_ejecutivos)
    @ticket.execrandoms = random_number


    respond_to do |format|
      if @ticket.save
        format.html { redirect_to ticket_url(@ticket), notice: "Ticket was successfully created." }
        format.json { render :show, status: :created, location: @ticket }
        @ticket.attachments.attach(params[:files])
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets/1 or /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to ticket_url(@ticket), notice: "Ticket was successfully updated." }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1 or /tickets/1.json
  def destroy
    @ticket.destroy

    respond_to do |format|
      format.html { redirect_to tickets_url, notice: "Ticket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search
    # Lógica para buscar tickets basada en el parámetro "search"
    if current_user.role == 'normal'
      @tickets = current_user.tickets.search(params[:search])
    else
      @tickets = Ticket.search(params[:search])
    end
    
    respond_to do |format|
      format.json { render json: @tickets }
    end
  end

  def sort_by_date
    @tickets = Ticket.order(created_at: :desc)
    respond_to do |format|
      format.js
    end
  end

  def update_execrandom
    execrandom_value = params[:ticket][:execrandoms]
    
    if (1..4).cover?(execrandom_value.to_i)
      @ticket.update_column(:execrandoms, execrandom_value)
      redirect_to @ticket, notice: 'Executive chnaged succesfully.'
    else
      redirect_to @ticket, alert: 'Invalid execrandom value.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      params.require(:ticket).permit(:ticket_id, :user_id, :executive_id, :supervisor_id, :title, :description, :priority, :due_date, :status, :star_rating, :comment, :execrandoms, attachments:[])
    end
end

