class UsersController < ApplicationController
	def new
		@user = User.new
  	end

  def create
   @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to('/')
    else
      redirect_to('/signup')
    end
  end

  def index
  	if params[:query] && params[:search]
  		search_by = params[:search].to_sym
    		query = params[:query]
    		@user = User.where( " #{search_by}  LIKE '%#{query}%' ").page(params[:page])
  	else
  		@user = User.all.page(params[:page])
  	end
  end

private

  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
