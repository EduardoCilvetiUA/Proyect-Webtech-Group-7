class AddDefaultAndNotNullToRoleInUsers < ActiveRecord::Migration[7.0]
  def up
    change_column :users, :role, :string, default: "Normal", null: false
  end

  def down
    change_column :users, :role, :string, default: nil, null: true
  end
end
