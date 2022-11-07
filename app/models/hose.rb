class Hose < ApplicationRecord
    validates :price, :presence =>true,length: {minimum: 3}
    validates :size, :presence =>true,length: {minimum: 3}
    belongs_to :user
end
