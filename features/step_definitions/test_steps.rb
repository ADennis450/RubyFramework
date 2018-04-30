require 'rspec'

Given(/^Navigate to "([^"]*)"$/) do |url|
  @test_page.visit_url(url)
end


Given(/^I navigate to "([^"]*)"$/) do |link|
  @test_page.visit_url(link)
end

Given(/^I do a search for "([^"]*)"$/) do |search_term|
  @test_page.google_search = search_term
  @test_page.click_google_search
end

And(/^I wait (\d+) seconds$/) do |arg|
  sleep arg
end

And(/^I click on the sogeti link$/) do
  @test_page.sogeti_link
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