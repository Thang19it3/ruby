require "test_helper"

class TintucsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tintucs_index_url
    assert_response :success
  end

  test "should get new" do
    get tintucs_new_url
    assert_response :success
  end

  test "should get edit" do
    get tintucs_edit_url
    assert_response :success
  end
end
