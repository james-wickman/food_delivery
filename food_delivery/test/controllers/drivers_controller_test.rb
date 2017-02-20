require 'test_helper'

class DriversControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get drivers_show_url
    assert_response :success
  end

end
