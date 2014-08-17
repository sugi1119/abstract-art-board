class HomeController < ApplicationController
  def index
    if author_signed_in?
        redirect_to :controller => 'dashboard', :action => 'index'
      end
  end
end