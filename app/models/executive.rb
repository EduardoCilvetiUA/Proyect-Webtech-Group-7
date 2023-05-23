class Executive < ApplicationRecord
    belongs_to :user, class_name: 'User'
    validates :user_id, presence: true, uniqueness: true

end
