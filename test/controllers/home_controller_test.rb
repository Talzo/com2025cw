require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

# Takes the user to the home page
  test "should get home" do
    get home_url
    assert_response :success

    assert_select 'h3', 'Tell us anything...'
  end

# Create request successfully
  test 'should create request' do
    assert_difference('Request.count', +1) do
      post home_path, params: {post: {body: "body"}}
  end
    assert_redirected_to home_url
  end

# Takes the user to the contact page
  test "should get contact" do
    get contact_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'h1', 'Contact Us'
  end

# Email field not inserted by user in contact page
  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

# Contact page form successfully filled
  test "should post request contact" do
    post request_contact_url, params:
    {name: "Matthew", email: "matthew@me.com", telephone: "1234567890", message: "Hello"}
    assert_response :redirect
      assert_nil flash[:alert]
      assert_not_empty flash[:notice]
  end

end
