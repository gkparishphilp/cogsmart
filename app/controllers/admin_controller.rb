
class AdminController < ApplicationController

	before_filter :authenticate_user!
	def	index
	unless current_user.is_admin?
		set_flash "unauthorized"
		redirect_to :back
		return false
	end
end

end
