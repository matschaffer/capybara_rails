require 'test_helper'

class FirebugCapybaraTest < ActionDispatch::IntegrationTest
  javascript
  firebug

  test "the home page" do
    visit "/"

    # Using method from http://stackoverflow.com/a/398120/69002
    wait_until { page.evaluate_script("window.console.exception") }
  end
end
