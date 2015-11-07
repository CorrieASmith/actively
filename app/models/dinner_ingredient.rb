class DinnerIngredient < ActiveRecord::Base
  belongs_to :dinner
  validates :description, :presence => true
end
