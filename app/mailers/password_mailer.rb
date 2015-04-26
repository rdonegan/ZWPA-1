class PasswordMailer < ActionMailer::Base
  default from: "zwpawasteaudit@gmail.com"

  def password_email
  	# change this to zerowaste@prc.org after testing
  	mail(to: 'zerowaste@prc.org', subject: "zwpawasteaudit.org Password Recovery")  	
  end
end
