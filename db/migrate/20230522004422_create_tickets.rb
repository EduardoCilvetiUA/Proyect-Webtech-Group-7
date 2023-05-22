class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.integer :ticket_id
      t.integer :user_id
      t.integer :executive_id
      t.integer :supervisor_id
      t.string :title
      t.text :description
      t.string :priority
      t.date :due_date
      t.string :status
      t.integer :star_rating
      t.text :comment

      t.timestamps
    end
  end
end
