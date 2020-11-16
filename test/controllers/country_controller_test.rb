require 'test_helper'

class CountryControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get country_new_url
    assert_response :success
  end

  test "should get edit" do
    get country_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get country_destroy_url
    assert_response :success
  end

end
