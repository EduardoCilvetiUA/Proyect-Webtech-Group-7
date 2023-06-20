class CommentsController < ApplicationController
    def create
      @ticket = Ticket.find(params[:ticket_id])
      @comment = Comment.new(comment_params)
      @comment.user_creator_id = current_user.id
      @comment.ticket_id = @ticket.id
      @comment.role = current_user.role
  
      if @comment.save
        redirect_to @ticket, notice: 'Comment was successfully created.'
      else
        redirect_to @ticket, alert: 'Failed to create comment.'
      end
    end
  
    def new
      @comment = Comment.new
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:data)
    end
  end
  