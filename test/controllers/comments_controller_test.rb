require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @comment = comments(:one)
    @post = posts(:one)
  end

# Tests validations
  test "the truth" do
    assert true
  end

# Create new comment
  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, comment: { body: @comment.body }, post_id: @post.id
    end
    assert_redirected_to post_path(assigns(:post))
  end

end
