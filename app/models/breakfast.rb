class Breakfast < ActiveRecord::Base
  belongs_to :user
  has_many :breakfast_ingredients
  validates :add_food, :presence => true
end
