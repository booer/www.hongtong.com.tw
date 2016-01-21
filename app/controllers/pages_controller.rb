class PagesController < ApplicationController
	# get /index
	def index
		@aimgs = AboutImage.all
		if session[:lang] == 'cn'
			@srvs = Service.where(lang: true)
		else
			@srvs = Service.where(lang: false)
		end
	end
	# get /about
	def about
		if session[:lang] == 'cn'
			@page = Page.find(1).page_cn
		else
			@page = Page.find(1).page_en
		end
		@aimgs = AboutImage.where(page: '1')
	end
	def history
		if session[:lang] == 'cn'
			@page = Page.find(2).page_cn
		else
			@page = Page.find(2).page_en
		end
		@aimgs = AboutImage.where(page: '2')
	end
end