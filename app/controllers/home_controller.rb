class HomeController < ApplicationController
  def index
    # raise 'err'
    if author_signed_in?
        redirect_to :controller => 'books', :action => 'index'
      end
  end
end