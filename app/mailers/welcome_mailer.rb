class WelcomeMailer < ApplicationMailer
    def send_welcome
        @user = params[:user]
        mail to: @user.email
end