class MonstersController < ApplicationController

  def create
    @location = Location.find(params[:location_id])
    @comment = @location.monsters.create(monster_params)
    redirect_to location_path(@location)
  end

  private
    def monster_params
      params.require(:monster).permit(:name, :rarity)
    end

end
