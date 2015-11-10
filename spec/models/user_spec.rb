require 'rails_helper'

describe User do
  it { should have_many :targets }
  it { should have_many :breakfasts }
  it { should have_many :lunches }
  it { should have_many :dinners }
  it { should have_many :snacks }
end
