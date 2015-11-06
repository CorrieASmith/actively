class Lunch < ActiveRecord::Base
  validates :add_food, :presence => true
end
