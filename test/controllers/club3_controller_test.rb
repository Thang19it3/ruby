require "test_helper"

class Club3ControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get club3_new_url
    assert_response :success
  end
end
