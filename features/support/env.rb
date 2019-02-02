require 'rspec'
require 'cucumber'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'faker'
require 'site_prism'
require 'rspec'
require 'yaml'
require 'pry'
require 'rspec/expectations'

include Capybara::DSL

$cart = []
$price = ''

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, { browser: :chrome})
end

Capybara.current_driver = :selenium
Capybara.default_max_wait_time = 10

page = lambda {|klass| klass.new}

Before do
  Capybara.reset_sessions!
  @page = page
end