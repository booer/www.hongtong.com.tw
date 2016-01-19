class Service < ActiveRecord::Base
	validates_presence_of :title, :desc, :message => '欄位不得為空'
	validates_length_of :desc, :maximum => 70, :message => '描述不得超過70個字'
end
