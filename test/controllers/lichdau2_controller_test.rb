require "test_helper"

class Lichdau2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lichdau2_index_url
    assert_response :success
  end

  test "should get edit" do
    get lichdau2_edit_url
    assert_response :success
  end
end
