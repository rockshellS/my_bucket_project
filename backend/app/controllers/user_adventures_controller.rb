class UserAdventuresController < ApplicationController
   
   def index
    user_adventures = UserAdventure.all 
    render json: user_adventures
   end
   
  def create
      
        a = params[:adventure]
       
        newAdventure = UserAdventure.create(user_id:params[:userid], adventure_id: a[:id])
        render json: newAdventure
   end


    def destroy
       
        user_adventure = UserAdventure.find_by(id: params[:id])
        user_adventure.destroy
        render json: {message: 'Adventure Deleted sad face', adv: user_adventure}
    end


end

    private

    def user_adventure_params
        params.require(:user_adventure).permit(:user_id, :adventure_id, :completed)
    end
