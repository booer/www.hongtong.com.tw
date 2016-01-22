class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :setting
	def is_admin?
		redirect_to admin_login_path, notice: '你沒有 admin 權限' unless current_user && current_user.admin?
	end
	def setting
		@site = Site.find_by(id: '1')

		if params[:lang].present?
			session[:lang] = params[:lang]
		end
		if session[:lang] == 'cn'
			session[:lang] = 'cn'
			I18n.locale = 'zh-TW'
		else
			session[:lang] = 'en'
			I18n.locale = session[:lang]
		end
	end
	
end

