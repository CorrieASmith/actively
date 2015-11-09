class Snack < ActiveRecord::Base
  has_many :snack_ingredients
  validates :add_food, :presence => true
end
