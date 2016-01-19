class LettersController < ApplicationController 
	def new
		@letter = Letter.new	
	end
	def create
		@letter = Letter.create(letter_params)
		if @letter.save
			redirect_to root_url
		else
			render :new
		end
	end

	private
	def letter_params
		params.require(:letter).permit(:personal_name, :company_name, :company_address, :mail, :tel, :msg)	
	end
end