require 'test_helper'

class NoodlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get noodles_index_url
    assert_response :success
  end

end
