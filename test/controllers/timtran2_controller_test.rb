require "test_helper"

class Timtran2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get timtran2_index_url
    assert_response :success
  end
end
