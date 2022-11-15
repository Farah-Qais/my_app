require "test_helper"

class Car4sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get car4s_index_url
    assert_response :success
  end
end
