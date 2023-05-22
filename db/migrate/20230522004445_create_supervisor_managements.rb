class CreateSupervisorManagements < ActiveRecord::Migration[7.0]
  def change
    create_table :supervisor_managements do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
