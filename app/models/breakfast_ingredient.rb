class BreakfastIngredient < ActiveRecord::Base
  belongs_to :breakfast
  validates :description, :presence => true
end
