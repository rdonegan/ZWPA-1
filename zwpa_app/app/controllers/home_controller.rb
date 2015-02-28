class HomeController < ApplicationController
  def index
  	@requests = Request.chronological.paginate(:page => params[:page], :per_page => 30)
  end
end
