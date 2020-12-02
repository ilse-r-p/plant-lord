class PlantsController < ApplicationController
  def index
    @plants = Plant.all

    @markers = @plants.geocoded.map do |plant|
      {
        lat: plant.latitude,
        lng: plant.longitude
      }
    end
  end

  def new
    @plant = Plant.new
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :new # jumps to view "new"
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:description, :name, :price, :address, :photo)
  end

end
