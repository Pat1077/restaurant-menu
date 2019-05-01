class DishesController < ApplicationController
  before_action :fix_fields, only: [:create, :update]
  before_action :set_dish, only: [:show, :edit, :update, :destroy]

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    raise
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to dishes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @dish.update(dish_params)
      redirect_to dishes_path
    else
      render :edit
    end
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

  def fix_fields
    params[:dish][:price] = params[:dish][:price].to_s.gsub(',', '.').to_f
  end
end
