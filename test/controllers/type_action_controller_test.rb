require 'test_helper'

class TypeActionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get type_action_new_url
    assert_response :success
  end

  test "should get edit" do
    get type_action_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get type_action_destroy_url
    assert_response :success
  end

  test "should get index" do
    get type_action_index_url
    assert_response :success
  end

end
