$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "capybara_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "capybara_rails"
  s.version     = CapybaraRails::VERSION
  s.authors     = ["Mat Schaffer"]
  s.email       = ["mat@schaffer.me"]
  s.homepage    = "http://mashion.new"
  s.summary     = "Capybara integration testing for Rails & Test::Unit"
  s.description = "A binding for the built-in Rails integration testing that allows for calling the Capybara DSL, setting drivers, etc."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.1"
  s.add_dependency "capybara", "~> 1.1.2"
  s.add_dependency "capybara-firebug", "~> 1.1.0"
  s.add_dependency "database_cleaner", "~> 0.7.1"

  s.add_development_dependency "sqlite3"
end
