require 'selenium-webdriver'
require 'webdrivers'

Given('Open page successfully') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get('http://the-internet.herokuapp.com/login')
    @driver.manage.window.resize_to(1024, 600)
  end
  
  When('Enter user name {string} and password {string} but they are incorrect') do |string, string2|
    @driver.find_element(:id, 'username').click
    @driver.find_element(:id, 'username').send_keys(string)
    @driver.find_element(:id, 'password').click
    @driver.find_element(:id, 'password').send_keys(string2)
    @driver.find_element(:css, '.fa').click
  end
  
  Then('The login is unsuccessful and the message {string} is appeared.') do |string|
    expect(@driver.find_element(:id, 'flash').text).to include('Your username is invalid!')
    @driver.close
  end
  
  When('Enter the correct password and username') do
    @driver.find_element(:id, 'username').click
    @driver.find_element(:id, 'username').send_keys('string')
    @driver.find_element(:id, 'password').click
    @driver.find_element(:id, 'password').send_keys('tring2')
    @driver.find_element(:css, '.fa').click
  end
  
  Then('Successful login result and display the message {string}') do |string|
    expect(@driver.find_element(:id, 'flash').text).to include('You logged into a secure area!')
    @driver.close
  end