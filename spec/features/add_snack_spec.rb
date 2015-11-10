require 'rails_helper'

describe "the add a snack process" do
  it "adds a new snack" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit '/'
    click_link 'My Fitness'
    click_link 'Snack'
    click_link 'Add Food'
    fill_in 'Add food', :with => 'Chocolate Covered Pretzels'
    click_on 'Create Snack'
    expect(page).to have_content 'Chocolate Covered Pretzels'
  end
end
