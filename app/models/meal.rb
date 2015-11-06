class Meal < ActiveRecord::Base
  has_many :foods
  validates :breakfast, :presence => true
  validates :lunch, :presence => true
  validates :dinner, :presence => true
  validates :snacks, :presence => true
end
