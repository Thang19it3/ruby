require "test_helper"

class Taoclub2ControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get taoclub2_new_url
    assert_response :success
  end
end
