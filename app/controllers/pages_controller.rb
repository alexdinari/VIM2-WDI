class PagesController < ApplicationController

	def home
	end
	# def create
	#    @user = User.new(user_params)
	#     if @user.save
	#       session[:user_id] = @user.id.to_s
	#       redirect_to('/')
	#     else
	#       redirect_to('/')
	#     end
 #  	end
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


