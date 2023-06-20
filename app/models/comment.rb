class Comment < ApplicationRecord
    belongs_to :ticket
    belongs_to :user_creator, class_name: "User"
  end
  
