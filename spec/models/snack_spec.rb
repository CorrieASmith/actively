require 'rails_helper'

describe Snack do
  it { should have_many :snack_ingredients }
end
