require 'test_helper'

class BasicCapybaraTest < ActionDispatch::IntegrationTest
  test "the home page" do
    visit "/"
    assert page.has_content? "Find me in"
  end
end
