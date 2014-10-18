require 'spec_helper'
require 'site_prism'
require_relative 'site_prism/home_page'

feature 'Google Home Page' do

  background do
    @home_page = HomePage.new
    @home_page.load
  end

  scenario 'Title Check' do
    expect(@home_page).to have_title 'Google'
  end

  scenario 'Search', :js => 'true' do
    @home_page.search_field.set 'therolstons.com'
    @home_page.search_button.click
    expect(@home_page).to have_content("The Rolston's: About Us www.therolstons.com")
  end

end
