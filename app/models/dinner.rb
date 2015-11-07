class Dinner < ActiveRecord::Base
  has_many :dinneringredients
  validates :add_food, :presence => true
end
