class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find_by_id(params[:id])
  end

  # def new
  #   @locations = Location.new
  # end


end
