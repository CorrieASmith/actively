require 'rails_helper'

describe BreakfastIngredient do
  it { should validate_presence_of :description }
  it { should belong_to :breakfast }
end
