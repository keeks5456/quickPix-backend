class PortraitsController < ApplicationController
  
  def index 
    portraits = Portrait.all
    render json: PortraitSerializer.new(portraits)
  end

  def show 
    portrait = Portrait.find_by(id: params[:id])
    render json: PortraitSerializer.new(portraits)
  end

  def create 
    portrait = portrait.new(portrait_params)
    if portrait.save 
      render json: portrait
    else 
      render json: {error: "Please add the correct attributes"}
    end
  end


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

