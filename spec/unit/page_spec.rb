require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'

include Capybara::DSL
Capybara.app_host = "http://website" # Using Selenium; connect over network
Capybara.run_server = false # Disable Rack since we are using Selenium.
Capybara.register_driver :remote_selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--no-default-browser-check')
  options.add_argument('--disable-dev-shm')
  Capybara::Selenium::Driver.new(
    app,
    :browser => :remote,
    :url => "http://#{ENV['SELENIUM_HOST']}:#{ENV['SELENIUM_PORT']}/wd/hub",
    :options => options
  )
end
Capybara.default_driver = :remote_selenium
Capybara.javascript_driver = :remote_selenium

describe "Example page render unit tests" do
  it "Should show the Exlore California logo" do
   visit('/')
   expect(page.has_selector? 'a.logo').to be_truthy
  end
end
