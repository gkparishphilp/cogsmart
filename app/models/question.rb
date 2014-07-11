class Question < ActiveRecord::Base
	belongs_to :screen

	has_many	:prompts
	has_many	:responses
end