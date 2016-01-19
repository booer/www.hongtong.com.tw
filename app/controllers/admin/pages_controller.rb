class Admin::PagesController < ApplicationController
	layout 'admin'
	# before_action :is_admin?, only: [:about, :wellcome]
	def edit
		@page = Page.find(params[:id])
	end
	def update
		@page = Page.find(params[:id])
		if @page.update(page_params)
			redirect_to edit_admin_page_path(params[:id]) 
		else
			render :edit
		end
	end

	private
	def page_params
		params.require(:page).permit(:page_cn, :page_en)
	end
end