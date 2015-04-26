class PasswordMailer < ActionMailer::Base
  default from: "zwpawasteaudit@gmail.com"

  def password_email
  	# change this to zerowaste@prc.org after testing
  	mail(to: 'achannar@andrew.cmu.edu', subject: "zwpawasteaudit.org Password Recovery")  	
  end
end
