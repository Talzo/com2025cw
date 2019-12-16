require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest

# Takes the user to the admin page
  test "should get admin" do
    get admin_url
    assert_response :success

    assert_select 'h3', 'Paste anonymous message:'
  end

# Create new post
  test 'should create post' do
    assert_difference('Post.count', +1) do
      post admin_path, params: {post: {body: "body"}}
  end
    assert_redirected_to admin_url
  end
  
end
