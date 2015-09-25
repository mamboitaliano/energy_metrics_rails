class AppliancesController < ApplicationController

	def index
		@appliance = Appliance.all
	end

	def show
		@appliance = Appliance.find(params[:id])
	end

	def new
	end

	def create
		@appliance = Appliance.new(article_params)

		@appliance.save
		redirect_to @appliance
		# render plain: params[:appliance].inspect
	end

	private
		def article_params
			params.require(:appliance).permit(:brand_name, :app_model_name, :app_model_number)
		end
end
