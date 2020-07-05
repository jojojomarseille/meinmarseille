require 'test_helper'

class LegalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get legals_new_url
    assert_response :success
  end

  test "should get create" do
    get legals_create_url
    assert_response :success
  end

  test "should get index" do
    get legals_index_url
    assert_response :success
  end

end
