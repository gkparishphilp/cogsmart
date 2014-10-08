class Question < ActiveRecord::Base

	validates :name, uniqueness: true

	belongs_to :screen

	has_many	:prompts
	has_many	:responses
	
end