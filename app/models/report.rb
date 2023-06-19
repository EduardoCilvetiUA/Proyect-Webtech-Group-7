class Report < ApplicationRecord
    belongs_to :supervisor, class_name: 'User'
    belongs_to :executive, class_name: 'User'

    validates :executive_id, presence: true
    validates :supervisor_id, presence: true
    validates :report_type, presence: true
    validates :date, presence: true
    
end
 