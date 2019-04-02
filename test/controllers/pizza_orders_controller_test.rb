require 'test_helper'

class PizzaOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get pizza_orders_create_url
    assert_response :success
  end

  test "should get update" do
    get pizza_orders_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pizza_orders_destroy_url
    assert_response :success
  end

end
