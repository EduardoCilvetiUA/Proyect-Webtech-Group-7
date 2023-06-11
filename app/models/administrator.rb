class Administrator < ApplicationRecord
    belongs_to :user, class_name: 'User'

    validates :user_id, presence: true, uniqueness: true
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end
