class PeopleController < ApplicationController

	before_filter :authenticate_user!

	def index
		authorize!( :admin, User )
		@users = User.joins( :roles ).where( "roles.name <> 'admin'" )
	end

	def create
		authorize!( :admin, User )
		@user = User.new( user_params )
		if @user.save
			set_flash 'User saved'
			redirect_to :back
		else
			set_flash 'User could not be saved', :danger, @user
			redirect_to :back
		end
	end

	def destroy
		authorize!( :admin, User )
		
	end

	def edit
		authorize!( :admin, User )
		@user = User.find( params[:id] )		
	end

	def update
		authorize!( :admin, User )
		
	end



end