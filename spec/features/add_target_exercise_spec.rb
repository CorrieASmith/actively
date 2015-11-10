require 'rails_helper'

describe "the add a target exercise process" do
  it "adds a new target" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit '/'
    click_link 'My Fitness'
    click_link 'Exercise'
    click_link 'New Target Muscle'
    fill_in 'Muscle', :with => 'Biceps'
    click_on 'Create Target'
    expect(page).to have_content 'Biceps'
  end
  it "adds a new target exercise" do
    target = FactoryGirl.create(:target)
    visit target_path(target)
    click_link 'Add an exercise'
    fill_in 'Description', :with => 'Pull Ups'
    click_on 'Create Exercise'
    expect(page).to have_content 'Pull Ups'
  end
end
