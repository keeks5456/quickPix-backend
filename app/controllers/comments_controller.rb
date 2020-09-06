class CommentsController < ApplicationController

  def index
      comments = Comment.all 
      render json: comments
  end
  
  def show
      comment = Comment.find(params[:id])
      render json: comment
  end
  
  def create
      comment = Comment.new(comment_params)
  
      if comment.save
          render json: comment
      else
          render json: { error: "Please try again"}
      end
      end
  
  def update
      comment = Comment.find(params[:id])
  
      if comment.update(comment_params)
          render json: comment
      else
          render json: { error: "Please try again"}
      end
  end
  
  def destroy
      comment = Comment.find(params[:id])
      comment.destroy
      render json: { message: "Successfully deleted comment"}
  end
  
  private 
  
  def comment_params
      params.require(:comment).permit(:content, :portrait_id)
  end
  end 