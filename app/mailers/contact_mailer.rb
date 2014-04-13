class ContactMailer < ActionMailer::Base
  # send mail when contact form submitted
  def send_email(email_id)
  	@email = Email.find(email_id)
    mail(to: "no-reply@gbsl.co.ke", from: @email.email, subject: @email.subject)
  end
end
