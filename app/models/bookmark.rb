class Bookmark < ActiveRecord::Base

	belongs_to :user
	belongs_to :screen
  validates :screen_id, uniqueness: { :message => "bookmark already exists!" }

end