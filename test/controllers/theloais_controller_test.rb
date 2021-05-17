require "test_helper"

class TheloaisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get theloais_index_url
    assert_response :success
  end

  test "should get new" do
    get theloais_new_url
    assert_response :success
  end

  test "should get edit" do
    get theloais_edit_url
    assert_response :success
  end
end
