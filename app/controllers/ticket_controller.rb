class TicketController < ApplicationController 
    def index
        @tickets = Ticket.all
    end

    def create
        @ticket = Ticket.new(worker_params)
    
        if @ticket.save
          redirect_to root_path,
                      flash: { notice: 'Worker was successfully created.' }
        else
          redirect_to root_path,
                      flash: { alert: 'Invalid' }
        end
      end

      def ticket_params
        params.permit(:title, :description, :worker_id, :state, :created_at)
      end
end