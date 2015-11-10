require 'rails_helper'

describe Breakfast do
  it { should have_many :breakfast_ingredients }
end
