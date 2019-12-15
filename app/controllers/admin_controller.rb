class AdminController < ApplicationController
    def admin
        @post = Post.new
        @requests = Request.all
    end

    def new
        @post = Post.new
    end

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

    def destroy
        @request = Request.find(params[:id])
        @request.destroy

        redirect_to admin_path
    end

    private def post_params
        params.require(:post).permit(:body)
    end
end