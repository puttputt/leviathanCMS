class MenulistsController < ApplicationController
  layout 'default'
  def new
    @menulist = menulist.new
  end
  
  def create
    @menulist = Menulist.new(params[:menulists])
    @menulist.save
    redirect_to :controller => 'admin', :action =>'menu'
  end
  
  def edit
    @menulist = Menulist.find(params[:id])
  end
  
  def update
    @menulist = Menulist.find(params[:id])
    @menulist.update_attributes(params[:menulists])
    redirect_to :controller => 'admin', :action =>'menu'
  end
  
  def destroy
    @menulist = Menulist.find(params[:id])
    @menus = Menu.find_by_menulist_id(@menulist.id)
    @menulist.destroy
    @menus.destroy
    
    redirect_to :controller => 'admin', :action =>'menu'
  end
end
