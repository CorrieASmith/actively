class Breakfast < ActiveRecord::Base
  has_many :breakfastingredients
  validates :add_food, :presence => true
end
