class HomePage < SitePrism::Page
  set_url 'http://en.wikipedia.org'

  element :search_field, "input#searchInput"
  element :search_button, "input#searchButton"
  element :page_heading, "h1#firstHeading"
end
