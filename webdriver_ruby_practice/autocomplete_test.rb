require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/autocomplete"

autocomplete = driver.find_element(id: 'autocomplete')
autocomplete.send_keys('Rruga 5 Maji, Tirana, Albania')

#Implicit
driver.manage.timeouts.implicit_wait = 5

#Explicit
wait = Selenium::WebDriver::Wait.new(timeouts: 5)
wait.until { driver.find_element(class: 'pac-item').displayed?}

autocomplete_result = driver.find_element(class: 'pac-item')
autocomplete_result.click
