module Api
  class PlantsController < ApplicationController
    def index
      @plants = Plant.with_attached_image.all
      render json: @plants
    end

    def create
      @plant = Plant.create(plant_params)
      render json: @plant
    end
    
    private
    
      def plant_params
        params.require(:plant).permit(
          :name, 
          :watering_frequency,
          :weekly_or_monthly,
          :last_time_watered, 
          :description)
      end
  end
end
