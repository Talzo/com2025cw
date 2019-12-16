require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest

# Takes the user to the page of the chosen post
  test "should get post" do

    get post_path
    assert_response :success
  end

end
