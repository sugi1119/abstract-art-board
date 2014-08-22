class HomeController < ApplicationController
  def index
    # raise 'err'
    if author_signed_in?
        redirect_to :controller => 'artboards', :action => 'new'
      end
  end
end