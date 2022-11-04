require "test_helper"

class HosesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hose = hoses(:one)
  end

  test "should get index" do
    get hoses_url
    assert_response :success
  end

  test "should get new" do
    get new_hose_url
    assert_response :success
  end

  test "should create hose" do
    assert_difference("Hose.count") do
      post hoses_url, params: { hose: { price: @hose.price, size: @hose.size, user_id: @hose.user_id } }
    end

    assert_redirected_to hose_url(Hose.last)
  end

  test "should show hose" do
    get hose_url(@hose)
    assert_response :success
  end

  test "should get edit" do
    get edit_hose_url(@hose)
    assert_response :success
  end

  test "should update hose" do
    patch hose_url(@hose), params: { hose: { price: @hose.price, size: @hose.size, user_id: @hose.user_id } }
    assert_redirected_to hose_url(@hose)
  end

  test "should destroy hose" do
    assert_difference("Hose.count", -1) do
      delete hose_url(@hose)
    end

    assert_redirected_to hoses_url
  end
end
