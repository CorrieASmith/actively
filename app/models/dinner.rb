class Dinner < ActiveRecord::Base
  validates :add_food, :presence => true
end
