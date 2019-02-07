class SessionsController < ApplicationController
	
	def new
	end

	def create
	  user = User.find_by(email: params[:email])

	  if user && user.authenticate(params[:password])
	    log_in(user)
	    redirect_to root_path, success: "You are now logged in !"

	  else
	    redirect_to new_session_path, danger:"Invalid email/password combination"
	  end
	end

	def destroy
		session.clear
		redirect_to root_path, success:"Successfully logged out!"
	end

end