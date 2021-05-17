require "test_helper"

class LoaitinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get loaitins_index_url
    assert_response :success
  end

  test "should get new" do
    get loaitins_new_url
    assert_response :success
  end

  test "should get edit" do
    get loaitins_edit_url
    assert_response :success
  end
end
