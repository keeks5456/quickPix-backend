class PortraitsController < ApplicationController
  
  def index 
    portraits = Portrait.all
    render json: portraits
  end

  def show 
    portrait = Portrait.find_by(params[:id])
    render json: portrait
  end

  def create 
    portrait = portrait.new(portrait_params)
    if portrait.save 
      render json: portrait
    else 
      render json: {error: "Please add the correct attributes"}
    end
  end

  # def update
  #   portrait = Portrait.find(params[:id])

  #   if portrait.update(portrait_params)
  #       render json: portrait
  #   else
  #       render json: { error: "Please try again"}
  #   end
  # end
  # we can do an update portrait once mvc is all done (we didnt add it to our user story)

  def destroy 
    portrait = Portrait.find(params[:id])
    portrait.destroy
    render json: {message: "Successfully deleted the portrait"}
  end

  private 

  def portrait_params 
    params.require(:portrait).permit(:img_url, :description, :like, :user_id)
  end
end
