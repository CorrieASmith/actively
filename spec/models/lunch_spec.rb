require 'rails_helper'

describe Lunch do
  it { should validate_presence_of :add_food }
  it { should have_many :lunch_ingredients }
end
