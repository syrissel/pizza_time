require 'test_helper'

class ToppingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get topping_index_url
    assert_response :success
  end

end
