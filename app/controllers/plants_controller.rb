class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def new
    @plant = Plant.new
  end

  def show
  end

  def create
  end

end
