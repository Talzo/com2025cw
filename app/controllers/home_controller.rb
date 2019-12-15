class HomeController < ApplicationController
    def home
        @request = Request.new
        @posts = Post.all.order("created_at DESC")
    end

    def contact

    end

    def request_contact
      name = params[:name]
      email = params[:email]
      telephome = params[:telephone]
      message = params[:message]

      if email.blank?
        flash[:alert] = I18n.t('home.request_contact.no_email')
      else
        flash[:notice] = I18n.t('home.request_contact.email_sent')
    end

      redirect_to root_path
    end
    
    def new
        @request = Request.new
    end

    def show
        @post = Post.find(params[:id])
    end

    def create
        @posts = Post.all
        @request = Request.new(request_params)

        if @request.save
            flash[:success] = "Sent!"
            redirect_to home_path
        else
            render 'home'
        end
    end

    def destroy
        @request = Request.find(params[:id])
        @request.destroy

        redirect_to home_path
    end

    private def request_params
        params.require(:post).permit(:body)
    end
end
