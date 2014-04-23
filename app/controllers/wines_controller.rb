class WinesController < ApplicationController
  def index
  	@available_at = Time.now
	@wines = ["Wine1", "Wine2", "Wine3", "Wine4"]
  end
  def show
  @wine = Wine.find(params[:id])
end
end