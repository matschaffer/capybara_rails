require 'active_support/concern'
require 'capybara/rails'

module CapybaraRails
  module Basic
    extend ActiveSupport::Concern
    include Capybara::DSL
  end
end
