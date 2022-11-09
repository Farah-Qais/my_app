class Admin < ApplicationRecord
    validates :first_name, :presence =>true,length: {minimum: 2,maximum:24}
    validates :last_name, :presence =>true,length: {minimum: 2,maximum:24}
    validates :age, :presence =>true,length: {minimum: 1,maximum:3}
    validates :identifier,presence:true
    validates :location,presence:true

    scope:admin1_age, ->{where(age: 0..25)}
    scope :admin2_age, -> { where("age > 22").where("LENGTH(first_name) > 4")}
    scope :admin3_age, ->(age= 24) { where('age > 23', age) }
    scope :admin4_age, -> { select(:first_name, :last_name, :age).where(age: 0..25) }

  before_validation :set_title
  private
  def set_title
  self.identifier = "#{"hellow world"}*-*#{Date.today}"
  end

  before_update :display_location_admin
  private
  def display_location_admin
  self.location = "#{13.to_s(2)}#{rand(2**1024).to_s(36).upcase[0..9]}#{"hellow".method(:count).inspect}"
  end
end