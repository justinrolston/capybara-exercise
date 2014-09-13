require 'spec_helper'

feature 'Home Page' do
  scenario 'Title' do
    visit "/"
    expect(page).to have_title "Home - Reynoldsburg Baptist Church"
  end
end
