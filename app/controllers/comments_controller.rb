class CommentsController < ApplicationController

# Display comments
  def index

  end

# Create a new comment under a specific post
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    if @comment.save
      flash[:success] = "Comment posted!"
      redirect_back fallback_location: root_path
    else
      render 'posts/show'
    end
  end

# Define parameters of a comment
  private def comment_params
      params.require(:comment).permit(:body)
  end
end
