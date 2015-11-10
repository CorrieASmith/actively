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
  it "adds a new breakfast ingredient" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    breakfast = FactoryGirl.create(:breakfast)
    visit breakfast_path(breakfast)
    click_link 'Add an ingredient'
    fill_in 'Description', :with => 'Flour'
    click_on 'Create Breakfast ingredient'
    expect(page).to have_content 'Flour'
  end
end
