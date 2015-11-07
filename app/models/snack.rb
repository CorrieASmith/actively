class Snack < ActiveRecord::Base
  has_many :snackingredients
  validates :add_food, :presence => true
end
