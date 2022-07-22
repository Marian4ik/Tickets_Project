class WorkerController < ApplicationController 

    def index
        @workers = Worker.all
    end

    def create
        @worker = Worker.new(worker_params)
    
        if @worker.save
          redirect_to worker_path,
                      flash: { notice: 'Worker was successfully created.' }
        else
          redirect_to worker_path,
                      flash: { alert: 'Invalid' }
        end
      end
    
      
    
      def worker_params
        params.permit(:worker_id, :last_name, :first_name, :age, :role, :active)
      end
end