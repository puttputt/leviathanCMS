class AdminController < ApplicationController
  layout 'default'
  def index
    
  end
  
  def menu
    @menu = Menu.all
    @menulist = Menulist.all
    #@index = Menu.all(:order => 'position ASC', :include => 'menulist')
    @index = Menulist.all(:order => 'menus.position ASC', :include => 'menus')
  end

  def category
    @cat = Category.all
  end
end
