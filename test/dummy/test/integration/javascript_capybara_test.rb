require 'test_helper'

class JavascriptCapybaraTest < ActionDispatch::IntegrationTest
  javascript

  test "the home page" do
    visit "/"
    wait_until { page.evaluate_script("window.ranJS") }
  end
end
