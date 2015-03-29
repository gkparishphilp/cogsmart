class CalendarMailer < ActionMailer::Base
  default from: "notifications@cogsmart.com"

  def calendar_email(user)
    @user = user
    mail(to: @user.email, subject: 'Your Cogsmart To Do List')
  end
end
