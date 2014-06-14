class Prompt < ActiveRecord::Base

	belongs_to	:screen

	has_many	:responses

end