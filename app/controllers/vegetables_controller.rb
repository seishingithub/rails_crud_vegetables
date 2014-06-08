class VegetablesController < ApplicationController

  def index
    @vegetable = Vegetable.new
    @vegetables = Vegetable.all
  end

  def create
    @vegetable = Vegetable.create(vegetable_params)
    if @vegetable.save
      redirect_to vegetables_path
    else
      render :index
    end
  end

  private
  def vegetable_params
    params.require(:vegetable).permit(:vegetable_type, :color)
  end
end