class Admin < ApplicationRecord
    validates :first_name, :presence =>true,length: {minimum: 2,maximum:24}
    validates :last_name, :presence =>true,length: {minimum: 2,maximum:24}
    validates :age, :presence =>true,length: {minimum: 1,maximum:3}
    validates :identifier,presence:true

   
    scope:admin_age, -> {where(age: 0..25)}

    before_validation :set_title
  private

    def set_title
      self.identifier ="#{"hellow world"}*-*#{Date.today}"
end
end
