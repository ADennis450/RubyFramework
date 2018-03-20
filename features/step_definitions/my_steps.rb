require 'rspec'

Given(/^Navigate to "([^"]*)"$/) do |arg|
  @test_page.visit_url(arg)
end


Given(/^I navigate to "([^"]*)"$/) do |arg|
  @test_page.visit_url(arg)
end

Given(/^I do a sogeti search for "([^"]*)"$/) do |arg|
  @test_page.sogeti_search
  @test_page.sogeti_search = arg
end

And(/^I wait (\d+) seconds$/) do |arg|
  pending
end