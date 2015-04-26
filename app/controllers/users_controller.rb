class UsersController < ApplicationController
  before_action :require_user, only: [:index]
	def new
		@user = User.new
  	end

  # This is my create method for creating a new user
  def create
   @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to root_path
    else
      flash[:danger] = "Looks like that didn't work"
      redirect_to('/')
    end
  end

  def trainerprof
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
     redirect_to profile_path(@user)
    else
     flash[:alert] = @user.errors.full_messages
     render "trainerprof"
    end
  end
 
  # This is my search functionality for searching by name
  def index
  	if params[:query]
    		query = params[:query]
    		@user = User.where( "name LIKE '%#{query}%'").where(trainer: true).page(params[:page])
        # sortPrice
  	else
  		@user = User.all.page(params[:page])
  	end
  end

  # This is my action for going to the trainers profile page
  def show
    @user = User.find(params[:id])
  end

  #This is my search functionality for sorting by price
  def sortPrice
  	if params[:price]
  		@user = User.where( " price '%#{query}%' ").page(params[:page])
  	else
  		@user = User.all.page(params[:page])
  	end
  end

private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation, :trainer, :bio, :price)
  end
end
