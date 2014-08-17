class DashboardController < ApplicationController
  before_action :authenticate_author!

  def index
  end
end