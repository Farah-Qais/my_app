class Admin < ApplicationRecord
    validates :first_name, :presence =>true,length: {minimum: 2,maximum:24}
    validates :last_name, :presence =>true,length: {minimum: 2,maximum:24}
    validates :age, :presence =>true,length: {minimum: 1,maximum:3}
end
