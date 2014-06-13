class Response < ActiveRecord::Base

	belongs_to	:user
	belongs_to	:surveying
	belongs_to	:question
	belongs_to	:prompt
	
end