require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "new should render new template" do
    get :new
    assert_template :new
  end
end