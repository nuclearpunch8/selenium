require "selenium-webdriver"
require "rspec"
require "webdrivers"

describe "testim automatik" do
  it "regjistron nje user" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://www.daltoscano.com/customer/account/create/"

    driver.find_element(id: 'firstname').send_keys('Auto')
    driver.find_element(id: 'lastname').send_keys('Mate')
    driver.find_element(id: 'is_subscribed').click
    driver.find_element(id: 'email_address').send_keys('himol45268@tinkmail.net')
    driver.find_element(id: 'password').send_keys('Test1234!')
    driver.find_element(id: 'password-confirmation').send_keys('Test1234!')
    driver.find_element(xpath: '//*[@id="recaptcha-anchor"]/div[1]').click
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
  end
end

driver.quit
