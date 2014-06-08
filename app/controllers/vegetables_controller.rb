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

  def show
    @vegetable = Vegetable.find(params[:id])
  end

  def edit
    @vegetable = Vegetable.find(params[:id])
  end

  def update
    @vegetable = Vegetable.find(params[:id])
    @vegetable.update_attributes!(vegetable_params)

    redirect_to vegetables_path
  end

  private
  def vegetable_params
    params.require(:vegetable).permit(:vegetable_type, :color)
  end
end