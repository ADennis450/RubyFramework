require 'page-object'

class TestPage
  include PageObject
  text_field(:search, :id => 'lst-ib')

  text_field(:google_search, :id =>  'lst-ib')

  text_field(:username, :id => 'identifierId')

  text_field(:password, :name => 'password')

  button(:click_google_search, :class => 'lsb')

  link( :sogeti_link, :href => 'https://www.sogeti.com/')

  def visit_url(value)
    @browser.goto(value)
  end

  def click_arrow(arrowClass)
    @browser.div(:class => arrowClass).fire_event :click
  end

  def click_next(value)
    if value == 'username'
    @browser.div(:id => 'identifierNext').fire_event :click;
    elsif value == 'password'
      @browser.div(:id => 'passwordNext').fire_event :click;
    end
  end

  def click_div
    @browser.div(:css => 'div.condition.expanded > div.content > div.treatment > div.arrow').fire_event :click;
  end

  def click_add
    @browser.div(:css => 'div.icon.icon-plus')
  end

  def change_instructions
    @browser.input(:css => 'input[type="text"]').to_subtype.clear;
    @browser.input(:css => 'input[type="text"]').send_keys  'This is a change';
  end

  def open_tab
    @browser.execute_script("window.open()")
  end
end