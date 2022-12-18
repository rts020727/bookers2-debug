class MapsController < ApplicationController
  def show
    @map = Map.new
  end
  
  def create
    @map = Map.new(map_params)
    @map.save
  end
  
  def map_params
    params.require(:map).permit(:address, :latitude, :longitude)
  end
end
