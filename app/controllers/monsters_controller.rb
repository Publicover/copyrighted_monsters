class MonstersController < ApplicationController
  before_filter :load_location

  def index
    @monsters = @location.present? ? @location.monsters : Monster.all
  end

  def show
    @location = Location.find(params[:location_id])
    @monster = @location.monsters(params[:id])
  end

  def create
    @location = Location.find(params[:location_id])
    @monster = @location.monsters.create(monster_params)
    redirect_to location_path(@location)
  end

  def destroy
    # @location = Location.find(params[:location_id])
    # @monster = @location.monsters.destroy(monster_params)
    @monster = Monster.find(params[:id])
    @monster.destroy

    redirect_to monsters_path
  end

  private
    def load_location
      @location = Location.find(params[:location_id]) if params[:location_id].present?
    end

    def monster_params
      params.require(:monster).permit(:name, :rarity)
    end

end
