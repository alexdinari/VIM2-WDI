class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :require_user
  # def current_user
   #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
   #    return @current_user
  # end

  def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
      return @current_user
  end

  def require_user
    redirect_to '/login' unless current_user
  end












# def current_user
#   if params[:user_id].blank?
#     @user = User.new
#   else
#     @current_user ||= User.find(session[:user_id]) if session[:user_id]
#   end   
# end

#   def require_user
#     redirect_to '/login' unless current_user
#   end

  # def require_trainer
  #   redirect_to '/login' unless current_user.admin?
  # end
end



