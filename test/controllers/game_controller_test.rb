require 'test_helper'

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get game_new_url
    assert_response :success
  end

  test "should get edit" do
    get game_edit_url
    assert_response :success
  end

  test "should get index" do
    get game_index_url
    assert_response :success
  end

end
