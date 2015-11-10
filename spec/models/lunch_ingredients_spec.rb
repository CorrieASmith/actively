require 'rails_helper'

describe LunchIngredient do
  it { should validate_presence_of :description }
  it { should belong_to :lunch }
end
