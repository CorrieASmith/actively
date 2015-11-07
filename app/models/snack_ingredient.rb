class SnackIngredient < ActiveRecord::Base
  belongs_to :snack
  validates :description, :presence => true
end
