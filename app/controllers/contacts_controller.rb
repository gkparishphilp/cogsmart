require 'csv'

class ContactsController < ApplicationController

	skip_before_filter :verify_authenticity_token, :only => [ :create ]
	before_filter :authenticate_user!, except: [ :create, :new ]


	def create
		email = params[:email]

		contact = Contact.where( email: email ).first_or_initialize

		if contact.save
			set_flash "Thanks for signing up!"
			if @manual = Resource.find_by_id( params[:manual_id] )
				redirect_to @manual.path
			else
				redirect_to root_path
			end
		else
			set_flash "Please check your email address and try again", :warning
			redirect_to root_path( email: email )
		end

	end


	def index
		unless current_user.is_admin?
      set_flash "unauthorized"
      redirect_to :back
      return false
    end
		@contacts = Contact.order( created_at: :desc )

		respond_to do |format|
			format.html{ render layout: 'admin' }
			format.csv{
				@csv = CSV.generate do |csv|
					csv << [ 'email', 'created_at' ]
					@contacts.each do |contact|
						csv << [ contact.email, contact.created_at ]
					end
				end
				render text: @csv
			}
		end
	end


end
