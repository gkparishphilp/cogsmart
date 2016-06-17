class ScreensController < ApplicationController

	before_filter :authenticate_user!


	def edit
		@screen = Screen.find( params[:id] )
	end

	def index
		@surveying = Surveying.where( user: current_user ).first_or_create
		@surveying.last_screen ||= Screen.first
		@previous_screens = Screen.where( 'id <= :furthest_screen_id', furthest_screen_id: @surveying.furthest_screen_id )
    	#@milestones = @previous_screens.where(id: [23, 38, 51, 60, 138, 154, 176, 192, 206, 221, 242])
		@bookmarks = Bookmark.where(user_id: current_user.id)
    	@tasks = Task.where(user_id: current_user.id)

    	@strategies = current_user.responses.where( content: 'Yes', question_id: Question.where( "name like 'will%' " ).pluck(:id) )
	end

	def show
		@surveying = Surveying.where( user: current_user ).first || Surveying.create( user: current_user )

		@screen = Screen.find_by( seq: params[:id] )

		@screen_of_module = @screen.category.screens.where( "seq < :i", i: @screen.seq ).count + 1
       	@screens_in_module = @screen.category.screens.count
       	@percent_complete = @screen_of_module / @screens_in_module.to_f * 100

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
