require 'test_helper'

class SponsorsControllerTest < ActionController::TestCase

  test 'should get index' do
    get :index
    assert_response :success
    assert_equal 2, assigns(:sponsors).count
  end

  test 'should get show' do
    get :show, id: sponsors(:one)
    assert_response :success
    assert_equal sponsors(:one), assigns(:sponsor)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: sponsors(:one).id
    assert_response :success
    assert_equal sponsors(:one), assigns(:sponsor)
  end

  test 'should create sponsor' do
    assert_difference("Sponsor.count") do
      post :create, sponsor: {
        name: 'sponsor',
        description: 'description',
        url: 'http://url.com'
      }
    end
    assert_redirected_to sponsor_path(assigns(:sponsor))
    assert_equal "Sponsor created", flash[:notice]
  end

  test 'when there is an error during create, it should redirect to new and show errors' do
    assert_difference("Sponsor.count", 0) do
      post :create, sponsor: {
        name: "sponsor",
        description: 'description',
        url: 'www.test.com'
      }
    end
    assert_equal "Sponsor not created: Url is invalid", flash[:notice]
    assert_template 'new'
  end

  test 'should update sponsor' do
    sponsor = sponsors(:one)
    put :update,
      id: sponsor.id,
      sponsor: {
        name: 'test'
      }
    assert_equal 'test', sponsor.reload.name
    assert_equal 'Sponsor updated', flash[:notice]
  end

  test 'when there is an error updating a sponsor, it should render edit and show errors' do
    sponsor = sponsors(:one)
    put :update, id: sponsor.id, sponsor: {
      name: 'Supercool sponsor'
    }
    assert_template 'edit'
    assert_equal "Sponsor not updated: Name has already been taken", flash[:notice]
  end

  test 'should destroy sponsor' do
    assert_difference("Sponsor.count", -1) do
      delete :destroy, id: sponsors(:one).id
    end
    assert_redirected_to sponsors_path
    assert_equal "Sponsor destroyed", flash[:notice]
  end
end
