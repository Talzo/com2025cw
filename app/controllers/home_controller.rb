class HomeController < ApplicationController

# Add a new request and display all posts in order of newest
  def home
      @request = Request.new
      @posts = Post.all.order("created_at DESC")
  end

# The contact page and mailer
  def contact

  end

# Parameters of the contact page, require email
  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]

    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    else
      ContactMailer.contact_email(email, name, telephone, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
  end

    redirect_to root_path
  end

# Create a new request
  def new
      @request = Request.new
  end

# Create a new request
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

# Define parameters of a request
  private def request_params
      params.require(:post).permit(:body)
  end
end
