require 'test_helper'

class JournalPlayerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get journal_player_new_url
    assert_response :success
  end

  test "should get edit" do
    get journal_player_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get journal_player_destroy_url
    assert_response :success
  end

  test "should get index" do
    get journal_player_index_url
    assert_response :success
  end

end
