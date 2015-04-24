class UsersController < ApplicationController
	def new
		@user = User.new
  	end

  # This is my create method for creating a new user
  def create
   @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to('/')
    else
      redirect_to('/')
    end
  end

  # This is my search functionality for searching by name
  def index
  	if params[:query]
    		query = params[:query]
    		@user = User.where( "name LIKE '%#{query}%'").where(trainer: true).page(params[:page])
  	else
  		@user = User.all.page(params[:page])
  	end
  end

  # This is my search functionality for sorting by price
  # def sortPrice
  # 	if params[:query]
  # 		@user = User.where( " price '%#{query}%' ").page(params[:page])
  # 	else
  # 		@user = User.all.page(params[:page])
  # 	end
  # end

private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation, :trainer, :bio)
  end
end
