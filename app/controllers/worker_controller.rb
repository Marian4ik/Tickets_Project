class WorkerController < ApplicationController 
  before_action :authenticate_user!
  before_action :set_worker, only: [:show, :edit, :update, :destroy]   

  # before_destroy :check_tickets    

    def check_tickets 
      if Worker.find(params[:id]).tickets.any?  
        flash[:notice] = 'This project has tasks.'
        redirect_to :action => 'list_projects'    
      end 
    end

    def index
      @workers = Worker.all
    end

    def create
      @worker = Worker.new(worker_params)

      if @worker.save
        redirect_to new_worker_path,
                    flash: { notice: 'Worker was successfully created.' }
      else
        redirect_to new_worker_path,
                    flash: { alert: 'Invalid' }
      end
    end
    
    def edit
    end
  
    def update 

      if @worker.update(worker_params)
        redirect_to worker_index_path,
                    flash: { notice: 'Worker was successfully update.' }
      else 
        redirect_to worker_index_path,
                    flash: { alert: 'Invalid' }
      end
  
    end
    
    def delete
    end

    def destroy
      @worker.destroy
      redirect_to worker_index_path,
                    flash: { notice: 'Worker was successfully delete.' }
    
    end

    def worker_params
      if params[:worker].present?
        params.require(:worker).permit(:worker_id, :last_name, :first_name, :age, :role, :active)
      else
        params.permit(:worker_id, :last_name, :first_name, :age, :role, :active)
      end
    end
  


    def set_worker
      @worker = Worker.find(params[:id])
    end

end