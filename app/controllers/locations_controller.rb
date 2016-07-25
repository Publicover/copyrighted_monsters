class LocationsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @locations = Location.order(sort_column + " " + sort_direction)
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def edit
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to @location
    else
      render 'new'
    end
  end

  def update
    @location = Location.find(params[:id])

    if @location.save
      redirect_to @location
    else
      render 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    redirect_to locations_path
  end

  private

    def sortable_columns
      ["address", "name", "city", "state", "checkpoint"]
    end

    def sort_column
      sortable_columns.include?(params[:column]) ? params[:column] : "address"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

    def location_params
      params.require(:location).permit(:address, :name, :checkpoint, :city, :state, :checkpoint)
    end

end
