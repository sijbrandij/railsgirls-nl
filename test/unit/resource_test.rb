require 'test_helper'

class ResourceTest < ActiveSupport::TestCase
  test "upvote should increase upvotes by 1" do
    resource = resources(:one)
    assert_difference('resource.upvotes') do
      resource.upvote
    end
  end

  test 'downvote should increase downvotes by 1' do
    resource = resources(:one)
    assert_difference('resource.downvotes') do
      resource.downvote
    end
  end

  test "should calculate right number of votes" do
    resource = resources(:two)
    resource.upvote
    resource.downvote
    resource.downvote
    assert_equal -2, resource.votes
  end
end