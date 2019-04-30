class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def new

  end

  def create
    @menu
  end

  def edit
    @menu = Menu.find(params[:id])
  end

end
