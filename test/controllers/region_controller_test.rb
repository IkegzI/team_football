require 'test_helper'

class RegionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get region_new_url
    assert_response :success
  end

  test "should get edit" do
    get region_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get region_destroy_url
    assert_response :success
  end

end
