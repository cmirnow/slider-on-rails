require "test_helper"

class SliderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get slider_index_url
    assert_response :success
  end
end
