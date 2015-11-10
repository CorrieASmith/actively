class Snack < ActiveRecord::Base
  belongs_to :user
  has_many :snack_ingredients
  validates :add_food, :presence => true
end
