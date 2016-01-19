class Admin::AboutImagesController < Admin::BaseController
	def index
		@aimgs = AboutImage.all.order(:page)
	end
	def edit
		@aimg = AboutImage.find(params[:id])
	end
	def update
		@aimg = AboutImage.find(params[:id])
		if @aimg.update(ai_params)
			redirect_to admin_about_images_path
		else
			render :edit
		end
	end

	private
	def ai_params
		params.require(:about_image).permit(:image)
	end
end