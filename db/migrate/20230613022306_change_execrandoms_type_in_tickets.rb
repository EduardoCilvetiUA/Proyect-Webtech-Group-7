class ChangeExecrandomsTypeInTickets < ActiveRecord::Migration[7.0]
  def up
    change_column :tickets, :execrandoms, :integer
  end

  def down
    change_column :tickets, :execrandoms, :string
  end
end
