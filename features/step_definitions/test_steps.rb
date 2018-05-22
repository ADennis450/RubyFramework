require 'rspec'

Given(/^Navigate to "([^"]*)"$/) do |url|
  @test_page.visit_url(url)
end


Given(/^I navigate to "([^"]*)"$/) do |link|
  @test_page.visit_url(link)
end

Given(/^I do a search for "([^"]*)"$/) do |search_term|
  @test_page.google_search = search_term
  sleep(2)
  @test_page.click_google_search
  @test_page.click_google_search
end

And(/^I wait (\d+) seconds$/) do |arg|
  sleep arg
end

And(/^I click on the sogeti link$/) do
  begin
  @test_page.sogeti_link
  rescue
    puts 'ERROR!'
    end
end

Then(/^I should see "([^"]*)"$/) do |title|
  expect(title).to eq @test_page.title
end

And(/^I put the username "([^"]*)"$/) do |arg|
  @test_page.username = arg;
end

And(/^I put the password "([^"]*)"$/) do |arg|
 @test_page.password = arg;
end

And(/^I click on the next button on "([^"]*)" page$/) do |arg|
  @test_page.click_next(arg)
end

And(/^I open a new tab$/) do
  @test_page.open_tab
end

And(/^I click on the dropdown "([^"]*)"$/) do |arg|
  @test_page.click_arrow(arg)
end

And(/^I click on the the medicine dropdown$/) do
  @test_page.click_div
end

And(/^I click the add button$/) do
  @test_page.click_add
end

And(/^I change the instructions$/) do
  @test_page.change_instructions
end