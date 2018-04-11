require 'page-object'

class TestPage
  include PageObject
  text_field(:search, :id => 'lst-ib')

  text_field(:google_search, :id =>  'lst-ib')

  button(:click_google_search, :class => 'lsb')

  link( :sogeti_link, :href => 'https://www.sogeti.com/')

  def visit_url(value)
    @browser.goto(value)
  end

end