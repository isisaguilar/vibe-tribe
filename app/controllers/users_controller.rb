class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      image_url: params[:image_url],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: user , status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    render json: current_user
  end

  def update
    user = current_user
    if params[:password] && params[:password_confirmation]
      user.password = params[:password]
      user.password_confirmation = params[:password_confirmation]
    end
    user.name = params[:name] || user.name
    user.image_url = params[:image_url] || user.image_url
    user.email = params[:email] || user.email
    if user.save
     render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  
  end

  def destroy
    user = current_user
    user.destroy
    render json: {message:"User has been destroyed!"}
    
  end
end
