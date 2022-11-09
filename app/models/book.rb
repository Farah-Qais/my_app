class Book < ApplicationRecord
    belongs_to :user
    validates :title, uniqueness: { scope: :year }
    scope:by_year,->(year){  where(year:year)  } 
end
