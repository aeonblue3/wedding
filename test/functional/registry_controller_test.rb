require 'test_helper'

class RegistryControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
