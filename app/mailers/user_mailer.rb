class UserMailer < ApplicationMailer
	default from: "me@gmail.com"

	def welcome_vim(user)
		@user = user
	end
end
