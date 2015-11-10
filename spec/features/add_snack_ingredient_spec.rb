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
  it "adds a new snack ingredient" do
    snack = FactoryGirl.create(:snack)
    visit snack_path(snack)
    click_link 'Add an ingredient'
    fill_in 'Description', :with => 'Pretzels'
    click_on 'Create Snack ingredient'
    expect(page).to have_content 'Pretzels'
  end
end
