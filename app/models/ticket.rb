class Ticket < ApplicationRecord
    belongs_to :user, class_name: 'User'
    belongs_to :executive, class_name: 'User'
    belongs_to :supervisor, class_name: 'User'


    validates :user_id, :executive_id, :supervisor_id, presence: true
    validates :title, :description, presence: true, length: { maximum: 255 }
    validates :priority, inclusion: { in: %w[Low Medium High] }
    validates :due_date, presence: true
    validates :status, inclusion: { in: %w[Open In\ Progress Closed] }
    validates :star_rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }, allow_nil: true

end
