require 'rails_helper'

describe Dinner do
  it { should have_many :dinner_ingredients }
end
