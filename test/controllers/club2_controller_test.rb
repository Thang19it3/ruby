require "test_helper"

class Club2ControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get club2_new_url
    assert_response :success
  end
end
