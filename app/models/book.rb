class Book < ApplicationRecord
    belongs_to :user
    validates :title, uniqueness: { scope: :year }
end
