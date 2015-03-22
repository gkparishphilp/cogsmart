class CalendarMailerPreview < ActionMailer::Preview

  def calendar_email
    CalendarMailer.calendar_email(User.first)
  end

end
