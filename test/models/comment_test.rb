require 'test_helper'

class CommentTest < ActiveSupport::TestCase

# Empty comments do not get posted
  test 'should not save empty comment' do
    comment = Comment.new

    comment.save
    refute comment.valid?
  end

# Non-empty posts get posted
  test 'should save valid comment' do
    comment = Comment.new
    post = Post.new
    post.body = 'This is another example.'
    comment.body = 'This is an example.'
    comment.post = post

    comment.save
    assert comment.valid?
  end
end
