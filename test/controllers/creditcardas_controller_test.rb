require 'test_helper'

class CreditcardasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get creditcardas_new_url
    assert_response :success
  end

  test "should get show" do
    get creditcardas_show_url
    assert_response :success
  end

end
