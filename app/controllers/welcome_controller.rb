class WelcomeController < ApplicationController

    def create 
        WelcomeMailer.with(user: @user).send_welcome.deliver_later
    end
end