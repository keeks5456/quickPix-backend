class CommentsController < ApplicationController


  def index
      comments = Comment.all 
      render json: CommentSerializer.new(comments)
    end
  
  def show
      comment = Comment.find(params[:id])
      render json: CommentSerializer.new(comment)
  end
  
  def create

      comment = Comment.create(comment_params)
      options = {
          include: [:portrait]
      }
      render json: CommentSerializer.new(comment, options)
      end
  
  def update
      comment = Comment.find(params[:id])
      comment.update(comment_params)
      comment.save
          render json: comment
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
