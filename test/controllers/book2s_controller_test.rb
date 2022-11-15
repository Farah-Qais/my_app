require "test_helper"

class Book2sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get book2s_index_url
    assert_response :success
  end
end
