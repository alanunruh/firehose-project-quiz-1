class CarsController < ApplicationController

  def index
    @car = Car.order("RANDOM()").first
  end

  def create
    Car.create(car_params)
    redirect_to root_path
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :year)
  end
end
