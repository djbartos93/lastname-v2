class DashboardController < ApplicationController
  def index
    @videos = Video.order("created_at").last
  end


  def single_archive
        @videos = Video.find(params[:archive])
  end

end
