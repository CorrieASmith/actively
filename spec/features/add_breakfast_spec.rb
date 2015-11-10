require 'rails_helper'

describe "the add a breakfast process" do
  it "adds a new breakfast" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit '/'
    click_link 'My Fitness'
    click_link 'Breakfast'
    click_link 'Add Food'
    fill_in 'Add food', :with => 'Blueberry Muffin'
    click_on 'Create Breakfast'
    expect(page).to have_content 'Blueberry Muffin'
  end
end
