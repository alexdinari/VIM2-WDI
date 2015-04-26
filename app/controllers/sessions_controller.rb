class SessionsController < ApplicationController
	
	#This is my create method for a new session
	def create
  		user = User.find_by_email(params[:email])
     	if user && user.authenticate(params[:password])
		    session[:user_id] = user.id
		    redirect_to user_path(user)
		else
		    flash[:danger] = "Oops! Houston we have a problem!"
		    redirect_to ('/')
		end
 	end

 	def destroy
	  	session[:user_id] = nil
	  	redirect_to('/')
  	end
end
