class Question < ActiveRecord::Base

	validates :name, uniqueness: true

	belongs_to :screen

	has_many	:prompts, dependent: :destroy
	has_many	:responses, dependent: :destroy
	
end