class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :ticket_id
      t.integer :user_creator_id
      t.string :role
      t.text :data

      t.timestamps
    end
  end
end
