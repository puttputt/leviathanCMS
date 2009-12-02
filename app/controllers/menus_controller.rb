class MenusController < ApplicationController
  def new
    @menu = Menu.new
  end
  
  def create
    @menu = Menu.new(params[:menu])
    @menu.save
  end
  
  def edit
    @menu = Menu.find(params[:id])
  end
  
  def update
    @menu = Menu.find(params[:id])
    @menu.update_attributes(params[:menu])
  end
  
  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
  end
end
