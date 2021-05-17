require "test_helper"

class LichdauControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get lichdau_edit_url
    assert_response :success
  end
end
