class WorkerController < ApplicationController 
    def new 
        @worker = Worker.new
    end
end