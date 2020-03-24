require 'test_helper'

class LikeControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:integer" do
    get like_user_id:integer_url
    assert_response :success
  end

  test "should get item_id:integer" do
    get like_item_id:integer_url
    assert_response :success
  end

end
