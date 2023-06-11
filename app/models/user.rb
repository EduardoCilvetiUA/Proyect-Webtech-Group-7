class User < ApplicationRecord
    has_many :tickets
    has_one :supervisor_management
    has_one :executive
    has_one :administrator
  
    


    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    #validates :google_account_id, presence: true
    validates :password, presence: true, length: { minimum: 6 }
    validates :role , presence: true
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    enum role: [:normal, :supervisor, :executive, :administrator]
    after_initialize :set_default_role, :if => :new_record?

    def set_default_role
        self.role ||= :normal
    end
    
end
