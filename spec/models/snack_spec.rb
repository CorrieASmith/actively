require 'rails_helper'

describe Snack do
  it { should validate_presence_of :add_food }
  it { should have_many :snack_ingredients }
end
