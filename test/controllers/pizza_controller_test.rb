require 'test_helper'

class PizzaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pizza_index_url
    assert_response :success
  end

  test "should get show" do
    get pizza_show_url
    assert_response :success
  end

end
