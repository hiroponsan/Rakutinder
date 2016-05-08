require 'test_helper'

class DateControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
