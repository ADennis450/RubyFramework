Before do
  if(ENV['Browser'] = 'chrome' || ENV['Browser'].nil?)
    chromedriver_path = File.join(File.absolute_path('C:\SeleniumDrivers\chromedriver.exe'))
    Selenium::WebDriver::Chrome.driver_path = chromedriver_path
    @browser = Watir::Browser.new :chrome, :switches => %w[--test-type --incognito --ignore-certificate-errors --disable-extensions]
    @test_page = TestPage.new(@browser)
  elsif(ENV['Browser'] = 'firefox')
    firefoxdriver_path = File.join(File.absolute_path('C:\SeleniumDrivers\geckodriver.exe'))
    Selenium::WebDriver::Firefox.driver_path = firefoxdriver_path
    @browser =  Watir::Browser.new :firefox, :switches => %w[--test-type --incognito --ignore-certificate-errors --disable-extensions]
  end
end

After do |scenario|
  if scenario.failed?
    @browser.screenshot.save (scenario.name+ '.png')
    embed(scenario.name+'.png', 'image/png')
  end
  @browser.quit
end