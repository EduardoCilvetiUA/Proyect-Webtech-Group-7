class RemoveTicketIdFromTickets < ActiveRecord::Migration[7.0]
  def change
    remove_column :tickets, :ticket_id
  end
end
