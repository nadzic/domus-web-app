require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get panel" do
    get static_pages_panel_url
    assert_response :success
  end

end
