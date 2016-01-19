class Admin::LettersController < Admin::BaseController
	def index
		@letters = Letter.all
	end
	def show
		@letter = Letter.find_by(id: params[:id])
	end
end