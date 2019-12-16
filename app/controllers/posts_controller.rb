class PostsController < ApplicationController

# Show page of a specific post
  def show
    @post = Post.find(params[:id])
  end
end
