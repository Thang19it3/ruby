require "test_helper"

class GiaodienControllerTest < ActionDispatch::IntegrationTest
  test "should get trangchu" do
    get giaodien_trangchu_url
    assert_response :success
  end

  test "should get datsan" do
    get giaodien_datsan_url
    assert_response :success
  end

  test "should get tintuc" do
    get giaodien_tintuc_url
    assert_response :success
  end

  test "should get doibong" do
    get giaodien_doibong_url
    assert_response :success
  end

  test "should get lienhe" do
    get giaodien_lienhe_url
    assert_response :success
  end
end
