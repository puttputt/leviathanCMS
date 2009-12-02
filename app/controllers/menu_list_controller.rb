class menu_listListController < ApplicationController
  def new
    @menu_list = menu_list.new
  end
  
  def create
    @menu_list = Menu_list.new(params[:menu_list])
    @menu_list.save
  end
  
  def edit
    @menu_list = Menu_list.find(params[:id])
  end
  
  def update
    @menu_list = Menu_list.find(params[:id])
    @menu_list.update_attributes(params[:menu_list])
  end
  
  def destroy
    @menu_list = Menu_list.find(params[:id])
    @menu_list.destroy
  end
end
