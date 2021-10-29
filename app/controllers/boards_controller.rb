class BoardsController < ApplicationController

  def index
    boards = current_user.boards
    render json: boards
  end

  def create
    board = Board.new(
      user_id: current_user.id,
      name: params[:name]
    )
    if board.save
      render json: board , status: :created
    else
      render json: { errors: board.errors.full_messages }, status: :bad_request
    end
    
  end

  def show
    board = Board.find(params[:id])
    render json: board, include: "post_boards.post"
  end

  def update
   board = Board.find(params[:id])
   board.user_id = current_user.id
   board.name = params[:name] || board.name
    if board.save
      render json: board , status: :created
    else
      render json: { errors: board.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    board = Board.find(params[:id])
    if board.destroy
      render json: {message:"Board has been destroyed!"}
     else
       render json: { errors: board.errors.full_messages }, status: :bad_request
     end
  end

end
