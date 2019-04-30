class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]

  def index
    @dishes = Dish.all
  end

  def show
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.save!

    redirect_to dish_path(@dish)
  end

  def edit
  end

  def update
    @dish.update(dish_params)

    redirect_to dish_path(@dish)
  end

  def destroy
    @dish.destroy

    redirect_to dishes_path
  end

  private

  def dish_params
    params.require(:dish).permit(:id, :name, :kind_dish, :description, :price)
  end

  def set_dish
    @dish = Dish.find(params[:id])
  end
end
