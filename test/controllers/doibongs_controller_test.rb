require "test_helper"

class DoibongsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doibongs_index_url
    assert_response :success
  end

  test "should get new" do
    get doibongs_new_url
    assert_response :success
  end

  test "should get edit" do
    get doibongs_edit_url
    assert_response :success
  end
end
