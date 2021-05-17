require "test_helper"

class DoibongControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doibong_index_url
    assert_response :success
  end

  test "should get new" do
    get doibong_new_url
    assert_response :success
  end

  test "should get edit" do
    get doibong_edit_url
    assert_response :success
  end
end
