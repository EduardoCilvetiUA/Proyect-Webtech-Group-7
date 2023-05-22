class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.integer :report_id
      t.integer :supervisor_id
      t.string :report_type
      t.date :date
      t.text :data

      t.timestamps
    end
  end
end
