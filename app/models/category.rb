class Category < ActiveRecord::Base
	has_many	:strategies
	has_many	:questions
end