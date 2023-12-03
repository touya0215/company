require "test_helper"

class Abouts::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get abouts_homes_top_url
    assert_response :success
  end

  test "should get about" do
    get abouts_homes_about_url
    assert_response :success
  end
end
