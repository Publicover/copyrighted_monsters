require 'test_helper'

class DashboardsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  test "should get index" do
    get :index
    assert_response :success
  end

end
