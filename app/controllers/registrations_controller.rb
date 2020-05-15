class RegistrationsController < Devise::RegistrationsController


	def create
		email = params[:user][:email]
		# todo -- check validity of email param?

		user = User.where( email: email ).first ||
				User.new( email: email, full_name: params[:user][:name], name: params[:user][:name], ip: request.ip )

		if user.encrypted_password.present?
			# this email is already registered for this site
			set_flash "#{email} is already registered.", :error
			redirect_to :back
			return false

		end

		user.password = params[:user][:password]
		user.password_confirmation = params[:user][:password_confirmation]

		if user.save
        	sign_up( :user, user )
        	respond_with user, location: after_sign_up_path_for( user )
		else
			set_flash "Could not register user.", :error, user
			render :back
			return false
		end

	end

end
