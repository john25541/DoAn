require 'test_helper'

class DondathangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dondathang = dondathangs(:one)
  end

  test "should get index" do
    get dondathangs_url
    assert_response :success
  end

  test "should get new" do
    get new_dondathang_url
    assert_response :success
  end

  test "should create dondathang" do
    assert_difference('Dondathang.count') do
      post dondathangs_url, params: { dondathang: {  } }
    end

    assert_redirected_to dondathang_url(Dondathang.last)
  end

  test "should show dondathang" do
    get dondathang_url(@dondathang)
    assert_response :success
  end

  test "should get edit" do
    get edit_dondathang_url(@dondathang)
    assert_response :success
  end

  test "should update dondathang" do
    patch dondathang_url(@dondathang), params: { dondathang: {  } }
    assert_redirected_to dondathang_url(@dondathang)
  end

  test "should destroy dondathang" do
    assert_difference('Dondathang.count', -1) do
      delete dondathang_url(@dondathang)
    end

    assert_redirected_to dondathangs_url
  end
end
