class Breakfast < ActiveRecord::Base
  has_many :breakfast_ingredients
  validates :add_food, :presence => true
end
