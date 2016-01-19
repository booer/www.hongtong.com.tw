class Admin::ServicesController < Admin::BaseController
	def index
		@srvs = Service.all
	end
	def edit
		@srv = Service.find(params[:id])
	end
	def update
		@srv = Service.find(params[:id])
		if @srv.update(srv_params)
			redirect_to admin_services_path
		else
			render :edit
		end
	end

	private
	def srv_params
		params.require(:service).permit(:title, :desc)
	end
end