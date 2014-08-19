class DashboardController < ApplicationController
  before_action :authenticate_author!

  def index

    # raise 'err'
    # redirect_to book_index_path
  end
end