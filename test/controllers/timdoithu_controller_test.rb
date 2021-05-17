require "test_helper"

class TimdoithuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get timdoithu_index_url
    assert_response :success
  end
end
