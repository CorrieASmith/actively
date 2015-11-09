class Lunch < ActiveRecord::Base
  has_many :lunch_ingredients
  validates :add_food, :presence => true
end
