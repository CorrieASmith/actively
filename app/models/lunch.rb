class Lunch < ActiveRecord::Base
  belongs_to :user
  has_many :lunch_ingredients
  validates :add_food, :presence => true
end
