class StaticPagesController < ApplicationController
  def index
  	@services = Service.all
  	@first_service = @services.first
  	@clients = Client.all
  	@email = Email.new
  end
end
