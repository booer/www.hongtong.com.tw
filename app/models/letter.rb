class Letter < ActiveRecord::Base
	validates_presence_of :personal_name, :mail, :tel, :msg, :message => '必填'
	validates_format_of :mail, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i, :message => '格式不正確'
end
