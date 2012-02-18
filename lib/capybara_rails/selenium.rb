require 'capybara/rails'
require 'active_support/concern'

module CapybaraRails
  module Selenium
    extend ActiveSupport::Concern

    module ClassMethods
      def javascript
        self.use_transactional_fixtures = false
        #DatabaseCleaner.strategy = :truncation

        setup do
          #DatabaseCleaner.start
          Capybara.current_driver = :selenium
          page.driver.options[:resynchronize] = true
        end

        teardown do
          #DatabaseCleaner.clean
          Capybara.use_default_driver
        end
      end
    end
  end
end
