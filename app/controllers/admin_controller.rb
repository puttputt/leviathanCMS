class AdminController < ApplicationController
  
  def index
    
  end
  
  def menu
    @menu = Menu.all
  end
end
