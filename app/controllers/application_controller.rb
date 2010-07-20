# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  
  #MainMenu = Menulist.all(:order => 'menus.position ASC', :include => 'menus')
  def Menulist.all_for_menu
    @@all_for_menu ||= Menulist.all(:order => 'menus.position ASC', :include => 'menus')
  end
  
end
