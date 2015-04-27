class PagesController < ApplicationController
	before_action :require_user, except: [:home, :about, :contact, :betrainer]
	def home
	end

	def contact
	end

	def about	
	end

	def betrainer
	end	
	
	private
  	def user_params
    params.require(:user).permit(:name,:email, :trainer, :password,:password_confirmation)
 	end
end

