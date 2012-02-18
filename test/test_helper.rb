# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

require 'capybara_rails/basic'
require 'capybara_rails/selenium'

class ActionDispatch::IntegrationTest
  include CapybaraRails::Basic
  include CapybaraRails::Selenium
end
