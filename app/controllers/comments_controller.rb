class CommentsController < ApplicationController

  def create
    comment = Comment.new(
      user_id: current_user.id ,
      post_id: params[:post_id],
      body: params[:body],
      image_url: params[:image_url]
    )
    if comment.save
      render json: comment , status: :created
    else
      render json: { errors: comment.errors.full_messages }, status: :bad_request
    end
  end

  def show
    comment = Comment.find(params[:id])
    render json: comment
  end


  def update
   comment = Comment.find(params[:id])
   comment.user_id = current_user.id
   comment.post_id = params[:post_id] || comment.post_id
   comment.body = params[:blurb] || comment.body
   comment.image_url = params[:image_url] || comment.image_url
    if comment.save
      render json: comment , status: :created
    else
      render json: { errors: comment.errors.full_messages }, status: :bad_request
    end
  end


  def destroy
    comment = Comment.find(params[:id])
    if comment.destroy
     render json: {message:"Comment has been destroyed!"}
    else
      render json: { errors: comment.errors.full_messages }, status: :bad_request
    end

  end
end
