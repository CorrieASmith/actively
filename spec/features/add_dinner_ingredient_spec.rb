require 'rails_helper'

describe "the add a dinner process" do
    it "adds a new dinner" do
      user = FactoryGirl.create(:user)
      login_as(user, :scope => :user)
      visit '/'
      click_link 'My Fitness'
      click_link 'Dinner'
      click_link 'Add Food'
      fill_in 'Add food', :with => 'Chicken Alfredo'
      click_on 'Create Dinner'
      expect(page).to have_content 'Chicken Alfredo'
    end
  it "adds a new dinner ingredient" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    dinner = FactoryGirl.create(:dinner)
    visit dinner_path(dinner)
    click_link 'Add an ingredient'
    fill_in 'Description', :with => 'Chicken'
    click_on 'Create Dinner ingredient'
    expect(page).to have_content 'Chicken'
  end
end
