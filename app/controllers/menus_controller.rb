class MenusController < ApplicationController
  layout 'default'
  def new
    @menu = Menu.new
  end
  
  def create
    @menu = Menu.new(params[:menus])
    @menu.save
    redirect_to :controller => 'admin', :action =>'menu'
  end
  
  def edit
    @menu = Menu.find(params[:id])
  end
  
  def update
    @menu = Menu.find(params[:id])
    @menu.update_attributes(params[:menus])
    redirect_to :controller => 'admin', :action =>'menu'
  end
  
  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to :controller => 'admin', :action =>'menu'
  end
end
