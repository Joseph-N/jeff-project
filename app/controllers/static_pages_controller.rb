class StaticPagesController < ApplicationController
  def index
  	@services = Service.all
  	@first_service = @services.first
  	@clients = Client.all
  end
end
