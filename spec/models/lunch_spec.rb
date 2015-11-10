require 'rails_helper'

describe Lunch do
  it { should have_many :lunch_ingredients }
end
