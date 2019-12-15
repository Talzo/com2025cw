class CommentsController < ApplicationController

  def index
  end

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

  private def comment_params
      params.require(:comment).permit(:body)
  end
end
