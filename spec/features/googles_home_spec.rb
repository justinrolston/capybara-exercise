require 'spec_helper'

feature 'Google Home Page' do
  background do
    visit '/'
  end

  scenario 'Title Check' do
    expect(page).to have_title 'Google'
  end

  scenario 'Search', :js => 'true' do
    find('input[name=q]').set('therolstons.com')
    find('button#gbqfb.gbqfb').click
    expect(page).to have_content("The Rolston's: About Us www.therolstons.com")
  end

end
