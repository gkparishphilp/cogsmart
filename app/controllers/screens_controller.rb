class ScreensController < ApplicationController

	before_filter :authenticate_user!


	def edit
		@screen = Screen.find( params[:id] )
	end

	def index
		@surveying = Surveying.where( user: current_user ).first_or_create
		@surveying.last_screen ||= Screen.first
		@previous_screens = Screen.where( 'id <= :last_screen', last_screen: @surveying.last_screen.id )
    @milestones = @previous_screens.where(id: [23, 38, 51, 60, 138, 154, 176, 192, 206, 221, 242])
		@bookmarks = Bookmark.where(user_id: current_user.id)
	end

	def show
		# todo create surveying.....
		@surveying = Surveying.where( user: current_user ).first || Surveying.create( user: current_user )

		@screen = Screen.find( params[:id] )
    @screen_content = ERB.new(@screen.content).result(binding) if @screen.content.present?

		@surveying.update last_screen_id: @screen.id
		@surveying.update( furthest_screen_id: @screen.id ) if @surveying.furthest_screen_id < @screen.id

		if @screen.module_path.present?
			redirect_to @screen.module_path
			return false
		end

	end

	def update
		@screen = Screen.find( params[:id] )
		if @screen.update( screen_params )
			set_flash 'screen saved'
		else
			set_flash 'screen could not be saved', :warning, @screen
		end
		redirect_to :back
	end

  def send_calendar_email
    @user = current_user

    CalendarMailer.calendar_email(@user).deliver
    flash[:notice] = "To do list has been sent."
    redirect_to :back
  end

	private
		def screen_params
			params.require( :screen ).permit( :strategy_id, :module_id, :name, :module_path, :seq, :content )
		end

end
