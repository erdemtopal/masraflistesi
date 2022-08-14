require "test_helper"

class DuyurusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duyuru = duyurus(:one)
  end

  test "should get index" do
    get duyurus_url
    assert_response :success
  end

  test "should get new" do
    get new_duyuru_url
    assert_response :success
  end

  test "should create duyuru" do
    assert_difference('Duyuru.count') do
      post duyurus_url, params: { duyuru: { body: @duyuru.body, title: @duyuru.title } }
    end

    assert_redirected_to duyuru_url(Duyuru.last)
  end

  test "should show duyuru" do
    get duyuru_url(@duyuru)
    assert_response :success
  end

  test "should get edit" do
    get edit_duyuru_url(@duyuru)
    assert_response :success
  end

  test "should update duyuru" do
    patch duyuru_url(@duyuru), params: { duyuru: { body: @duyuru.body, title: @duyuru.title } }
    assert_redirected_to duyuru_url(@duyuru)
  end

  test "should destroy duyuru" do
    assert_difference('Duyuru.count', -1) do
      delete duyuru_url(@duyuru)
    end

    assert_redirected_to duyurus_url
  end
end
