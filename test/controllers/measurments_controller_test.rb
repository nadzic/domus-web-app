require 'test_helper'

class MeasurmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get measurments_index_url
    assert_response :success
  end

  test "should get new" do
    get measurments_new_url
    assert_response :success
  end

  test "should get create" do
    get measurments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get measurments_destroy_url
    assert_response :success
  end

end
