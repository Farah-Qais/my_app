class Hose < ApplicationRecord
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }  
    validates :username, length: {minimum: 3}, allow_blank: false 
    validates :name, presence: true, uniqueness:{case_sensitive:false}  
    validates :type, length: {minimum: 3}, allow_blank: false 
    validates :size, length: {minimum: 3}, allow_blank: false
    has_one :Profile 
    has_many :books
    belongs_to :user
end
