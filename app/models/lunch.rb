class Lunch < ActiveRecord::Base
  has_many :lunchingredients
  validates :add_food, :presence => true
end
