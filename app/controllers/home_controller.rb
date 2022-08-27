class HomeController < ApplicationController 
before_action :authenticate_user!
    def index
        # flash[:notice] = "Login in successfully"
        # flash[:alert] = "Invalid"
    end
end