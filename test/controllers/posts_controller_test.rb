require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @post = posts(:one)
  end
  
# Tests validations
  test "the truth" do
    assert true
  end

# Takes the user to the page of the chosen post
  test "should get post" do
    get post_url(@post)
    assert_response :success
  end
end
