class Strategy < ActiveRecord::Base

	belongs_to 	:category

	has_many 	:screens
end