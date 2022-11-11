class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
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

  before_validation :display_location_admin
  private
  def display_location_admin
  self.location = "#{13.to_s(2)}#{rand(2**1024).to_s(36).upcase[0..9]}#{"hellow".method(:count).inspect}"
  end
end