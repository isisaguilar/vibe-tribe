class PostsController < ApplicationController
  def index
    post = Post.all
    render json: post
  end

  def create
    post = Post.new(
      user_id: 1,
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
    render json: post
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
