class UserMailer < ApplicationMailer
	default from: "me@gmail.com"

	def welcome_vim(user)
		@user = user
		@url = 'http://www.google.com'
		mail(to: @user.email, subject: 'Tester')
	end
end
