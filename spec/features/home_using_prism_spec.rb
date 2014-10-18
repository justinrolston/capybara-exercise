require 'spec_helper'
require 'site_prism'
require_relative 'site_prism/home_page'

feature 'Wikipedia Home Page' do

  background do
    @home_page = HomePage.new
    @home_page.load
  end

  scenario 'Title Check' do
    expect(@home_page).to have_title 'Wikipedia, the free encyclopedia'
  end

  scenario 'Search' do
    @home_page.search_field.set 'Ohio'
    @home_page.search_button.click
    expect(@home_page.page_heading.text).to eq "Ohio"
  end

end
