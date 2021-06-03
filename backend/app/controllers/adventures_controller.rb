class AdventuresController < ApplicationController
    
  
  
  def index
      adventure = Adventure.all
      render json: adventure
  end

  def show 
    adventure = Adventure.find(params[:id])
    render json: adventure
  end

end
