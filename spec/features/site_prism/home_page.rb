class HomePage < SitePrism::Page
  set_url "http://www.google.com"

  element :search_field, "input[name='q']"
  element :search_button, "button#gbqfb.gbqfb"
end
