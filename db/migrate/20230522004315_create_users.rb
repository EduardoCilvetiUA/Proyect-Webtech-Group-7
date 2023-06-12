class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :google_account_id
      t.string :password
      t.string :role, default: "normal"

      t.timestamps
    end
  end
end
