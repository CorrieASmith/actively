require 'rails_helper'

describe Breakfast do
  it { should validate_presence_of :add_food }
  it { should have_many :breakfast_ingredients }
end
