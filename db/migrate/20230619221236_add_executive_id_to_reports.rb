class AddExecutiveIdToReports < ActiveRecord::Migration[7.0]
  def change
    add_column :reports, :executive_id, :integer
  end
end
