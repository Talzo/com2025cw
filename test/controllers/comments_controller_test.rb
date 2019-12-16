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
end
