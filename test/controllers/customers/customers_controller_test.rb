require "test_helper"

class Customers::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customers_customers_new_url
    assert_response :success
  end

  test "should get index" do
    get customers_customers_index_url
    assert_response :success
  end

  test "should get show" do
    get customers_customers_show_url
    assert_response :success
  end

  test "should get edit" do
    get customers_customers_edit_url
    assert_response :success
  end
end
