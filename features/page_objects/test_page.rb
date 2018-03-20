require 'page-object'

class TestPage
  include PageObject
  text_field(:search, :id => 'lst-ib')

  link(:sogeti_link, :href =>  'https://www.Sogeti.com')

  link(:sogeti_search, :class => 'navbar-search')

  def visit_url(value)
    @browser.goto(value)
  end

end