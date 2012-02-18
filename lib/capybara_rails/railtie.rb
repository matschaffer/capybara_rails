module CapybaraRails
  class Railtie < Rails::Railtie
    initializer "capybara_rails.initialize" do |app|
      return unless Rails.env.test?
      require 'capybara_rails/basic'
      require 'capybara_rails/selenium'

      ActionDispatch::IntegrationTest.send(:include, CapybaraRails::Basic)
      ActionDispatch::IntegrationTest.send(:include, CapybaraRails::Selenium)
    end
  end
end
