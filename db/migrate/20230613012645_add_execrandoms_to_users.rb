class AddExecrandomsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :execrandoms, :integer
  end
end
