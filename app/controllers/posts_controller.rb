class PostsController < ApplicationController
  before_action :authenticate_user, except: [:index]
  def index
    posts = Post.all.reverse
    render json: posts
  end

  def create
    post = Post.new(
      user_id: current_user.id,
      blurb: params[:blurb],
      blog: params[:blog],
      image_url: params[:image_url],
      video_url: params[:video_url]
    )
    if post.save
      render json: post , status: :created
    else
      render json: { errors: post.errors.full_messages }, status: :bad_request
    end
  end

  def show
    post = Post.find(params[:id])
    render json: post,  include: "user,comments.user"
  end

def update
  post = Post.find(params[:id])
  post.blurb = params[:blurb] || post.blurb
  post.blog = params[:blog] || post.blog
  post.image_url = params[:image_url] || post.image_url
  post.video_url = params[:video_url] || post.video_url
  if post.save
    render json: post , status: :created
  else
    render json: { errors: post.errors.full_messages }, status: :bad_request
  end
end

end
