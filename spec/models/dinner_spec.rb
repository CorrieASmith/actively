require 'rails_helper'

describe Dinner do
  it { should validate_presence_of :add_food }
  it { should have_many :dinner_ingredients }
end
