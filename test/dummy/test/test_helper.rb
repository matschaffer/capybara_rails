ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
end

require 'capybara_rails/basic'

class ActionDispatch::IntegrationTest
  include CapybaraRails::Basic
end
