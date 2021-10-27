class PostBoardsController < ApplicationController

  def create
    post_board = PostBoard.new(
      post_id: params[:post_id],
      board_id: params[:board_id]
    )
    if post_board.save
      render json: post_board
    else
      render json: {errors: post_board.full_messages}, status: :unprocessable_entity
    end
  end

  
  def destroy
    post_board = PostBoard.find(params[:id])
    if post_board.destroy
      render json: {message:"post_board has been destroyed!"}
    else
      render json: { errors: post_board.errors.full_messages }, status: :bad_request
    end
  end

end
