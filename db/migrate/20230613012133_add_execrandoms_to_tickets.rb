class AddExecrandomsToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :execrandoms, :string
  end
end
