class Report < ApplicationRecord
    belongs_to :supervisor, class_name: 'User'

    validates :report_id, :supervisor_id, presence: true
    validates :report_type, presence: true
    validates :date, presence: true
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
