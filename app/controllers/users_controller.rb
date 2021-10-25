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
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find(current_user.id)
    render json: user
  end

  def update
    user = User.find(current_user.id)
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
    user = User.find(params[:id])
    if user.destroy
      render json: {message:"User has been destroyed!"}
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end
end
