require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase

  test 'should get index' do
    get :index
    assert_response :success
    assert_equal 2, assigns(:resources).count
  end

  test "should get show" do
    get :show, id: resources(:one).id
    assert_response :success
    assert_equal resources(:one), assigns(:resource)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "new should render new template" do
    get :new
    assert_template :new
  end

  test 'should create resource' do
    assert_difference("Resource.count") do
      post :create, resource: {
        title: 'test',
        description: 'test',
        url: 'test',
      }
    end
    assert_redirected_to resources_path
    assert_equal "Resource created", flash[:notice]
  end

  test 'should get edit' do
    get :edit, id: resources(:one).id
    assert_response :success
  end

  test 'should update resource' do
    resource = resources(:one)
    put :update, id: resource.id, resource: {title: 'test'}
    assert_equal "test", resource.reload.title
    assert_redirected_to resources_path
    assert_equal "Resource updated!", flash[:notice]
  end

  test "should destroy resource" do
    assert_difference("Resource.count", -1) do
      delete :destroy, id: resources(:one).id
    end
    assert_redirected_to resources_path
    assert_equal "Resource deleted", flash[:notice]
  end

  test 'should upvote resource' do
    resource = resources(:one)
    post :upvote, id: resource.id
    assert_equal 1, resource.reload.upvotes
  end

  test 'should downvote resource' do
    resource = resources(:one)
    post :downvote, id: resource.id
    assert_equal 1, resource.reload.downvotes
  end
end