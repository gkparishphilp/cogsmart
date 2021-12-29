class PeopleController < ApplicationController
  layout 'admin'

	before_action :authenticate_user!

	def index
		authorize!( :admin, User )
		@users = User.all
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
		@user = User.find(params[:id])
    if @user.destroy
			set_flash 'User deleted'
			redirect_to :back
    else
    	set_flash 'User could not be deleted', :danger, @user
			redirect_to :back
    end
	end

	def edit
		authorize!( :admin, User )
		@user = User.find( params[:id] )
	end

	def update
		authorize!( :admin, User )
		@user = User.find(params[:id])
    if @user.update_attributes(user_params)
			set_flash 'User saved'
			redirect_to :back
    else
    	set_flash 'User could not be updated', :danger, @user
      render 'edit'
    end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end


end
