class AdminController < ApplicationController

# Add new post and display all requests
  def admin
      @post = Post.new
      @requests = Request.all
  end

# Add a new post
  def new
      @post = Post.new
  end

# Create a new post by the admin
  def create
      @requests = Request.all
      @post = Post.new(post_params)

      if @post.save
          flash[:success] = "Posted!"
          redirect_to admin_path
      else
          render 'admin'
      end
  end

# Delete a request by the admin
  def destroy
      @request = Request.find(params[:id])
      @request.destroy

      redirect_to admin_path
  end

# Define parameters of the post
  private def post_params
      params.require(:post).permit(:body)
  end
end
