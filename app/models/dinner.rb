class Dinner < ActiveRecord::Base
  has_many :dinner_ingredients
  validates :add_food, :presence => true
end
