class LunchIngredient < ActiveRecord::Base
  belongs_to :lunch
  validates :description, :presence => true
end
