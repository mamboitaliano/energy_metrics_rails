class AppliancesController < ApplicationController
	def new
	end

	def create
		render plain: params[:appliance].inspect
	end
end
