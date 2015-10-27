require 'rails_helper'

describe Target do
  it { should validate_presence_of :muscle }
  it { should have_many :exercises }
end
