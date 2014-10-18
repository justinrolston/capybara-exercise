require 'spec_helper'

feature 'Google Home Page' do

  scenario 'Title Check' do
    visit '/'
    expect(page).to have_title 'Google'
  end

  scenario 'Search', :js => 'true' do
    visit '/'
    find('input[name=q]').set('therolstons.com')
    find('button#gbqfb.gbqfb').click
    expect(page).to have_content("The Rolston's: About Us www.therolstons.com")
  end
  
end
