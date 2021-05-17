require "test_helper"

class Taoclub1ControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get taoclub1_new_url
    assert_response :success
  end
end
