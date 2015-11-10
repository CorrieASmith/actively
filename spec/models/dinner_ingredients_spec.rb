require 'rails_helper'

describe DinnerIngredient do
  it { should validate_presence_of :description }
  it { should belong_to :dinner }
end
