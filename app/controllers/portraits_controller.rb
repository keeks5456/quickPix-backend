class PortraitsController < ApplicationController
  
  def index 
    portraits = Portrait.all
    render json: PortraitSerializer.new(portraits)
  end

  def show 
    portrait = Portrait.find_by(id: params[:id])
    render json: PortraitSerializer.new(portrait)
  end

  def create 
    portrait = Portrait.create(portrait_params)
    options = {
      include: [:user]
    }
      render json: PortraitSerializer.new(portrait)
  end

  def update 
    portrait = Portrait.find(params[:id])
    portrait.update(params.require(:portrait).permit(:like))
    portrait.save
    render json: portrait
  end


  def destroy 
    @portrait = Portrait.find(params[:id])
    @portrait.destroy
    render json: {message: "Successfully deleted the portrait"}
  end

  private 

  def portrait_params 
    params.require(:portrait).permit(:img_url, :description, :like, :user_id)
  end
end

