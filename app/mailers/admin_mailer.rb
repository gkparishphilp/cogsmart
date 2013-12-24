class AdminMailer < ActionMailer::Base

	def new_contact( contact )
		@contact = contact
		mail to: 'office@playswell.com', from: 'office@playswell.com', subject: 'You have a new contact!'
	end

end