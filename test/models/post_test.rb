require 'test_helper'

class PostTest < ActiveSupport::TestCase

# Empty posts do not get posted
  test 'should not save empty post' do
    post = Post.new

    post.save
    refute post.valid?
  end

# Non-empty posts get posted 
  test 'should save valid post' do
    post = Post.new

    post.body = 'This is an example.'

    post.save
    assert post.valid?
  end
end
