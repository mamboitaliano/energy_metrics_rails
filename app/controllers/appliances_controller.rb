class AppliancesController < ApplicationController
	def new
	end

	def create
		@appliance = Appliance.new(params[:appliance])

		@appliance.save
		redirect_to @appliance
		# render plain: params[:appliance].inspect
	end
end
