class SessionsController < ApplicationController

	def new
		
	end

	def create
	  user = User.first
      if user && User.authenticate(params[:username], params[:password])
        session[:user_id] = user.id
        redirect_to root_url, notice: "Logged in!"
      else
        flash.now.alert = "Username or password is invalid"
        render "new"
      end
	end

	def mail
		PasswordMailer.password_email.deliver
		flash.now.alert = "Password Recovery Email Sent"
		render "new"		
	end

	def destroy
	  session[:user_id] = nil
      redirect_to root_url, notice: "Logged out!"	
	end
end
