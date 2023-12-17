require "test_helper"

class Customers::LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customers_likes_index_url
    assert_response :success
  end
end
