require 'capybara/rails'
require 'capybara/firebug'

require 'database_cleaner'

require 'active_support/concern'

module CapybaraRails
  module Selenium
    extend ActiveSupport::Concern

    # stalls test until ^C is hit
    # useful for inspecting page state via firebug
    def wait
      continue = false
      trap "SIGINT" do
        puts "Continuing..."
        continue = true
      end
      puts "Waiting. Press ^C to continue test..."
      wait_until(3600) { continue }
      trap "SIGINT", "DEFAULT"
    end

    module ClassMethods
      attr_accessor :use_firebug
      def firebug
        self.use_firebug = true
      end

      def javascript
        self.use_transactional_fixtures = false
        DatabaseCleaner.strategy = :truncation

        setup do
          DatabaseCleaner.start
          Capybara.current_driver = :selenium
          Capybara.current_driver = :selenium_with_firebug if self.class.use_firebug
          page.driver.options[:resynchronize] = true
        end

        teardown do
          DatabaseCleaner.clean
          Capybara.use_default_driver
        end
      end
    end
  end
end
