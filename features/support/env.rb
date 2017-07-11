require 'bundler'
Bundler.require
require 'capybara'
require 'capybara/cucumber'
require 'selenium/webdriver'
require 'site_prism'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome


SitePrism.configure do |config|
  config.use_implicit_waits = true
end
