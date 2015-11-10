require 'rails_helper'

describe SnackIngredient do
  it { should validate_presence_of :description }
  it { should belong_to :snack }
end
