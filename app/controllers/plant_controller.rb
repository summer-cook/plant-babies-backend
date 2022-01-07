class PlantController < ApplicationController
  def index
    @plants = Plant.with_attached_image.all
    render json: @plants
  end
end
