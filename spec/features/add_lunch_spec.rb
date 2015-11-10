require 'rails_helper'

describe "the add a lunch process" do
  it "adds a new lunch" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit '/'
    click_link 'My Fitness'
    click_link 'Lunch'
    click_link 'Add Food'
    fill_in 'Add food', :with => 'Tuna Melt'
    click_on 'Create Lunch'
    expect(page).to have_content 'Tuna Melt'
  end
end
