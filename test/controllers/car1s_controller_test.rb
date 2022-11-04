require "test_helper"

class Car1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car1 = car1s(:one)
  end

  test "should get index" do
    get car1s_url
    assert_response :success
  end

  test "should get new" do
    get new_car1_url
    assert_response :success
  end

  test "should create car1" do
    assert_difference("Car1.count") do
      post car1s_url, params: { car1: { type: @car1.type, user_id: @car1.user_id, vin: @car1.vin } }
    end

    assert_redirected_to car1_url(Car1.last)
  end

  test "should show car1" do
    get car1_url(@car1)
    assert_response :success
  end

  test "should get edit" do
    get edit_car1_url(@car1)
    assert_response :success
  end

  test "should update car1" do
    patch car1_url(@car1), params: { car1: { type: @car1.type, user_id: @car1.user_id, vin: @car1.vin } }
    assert_redirected_to car1_url(@car1)
  end

  test "should destroy car1" do
    assert_difference("Car1.count", -1) do
      delete car1_url(@car1)
    end

    assert_redirected_to car1s_url
  end
end
