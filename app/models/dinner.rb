class Dinner < ActiveRecord::Base
  belongs_to :user
  has_many :dinner_ingredients
  validates :add_food, :presence => true
end
