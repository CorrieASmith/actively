class Snack < ActiveRecord::Base
  validates :add_food, :presence => true
end