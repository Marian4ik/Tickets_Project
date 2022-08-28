class TicketController < ApplicationController 
  before_action :authenticate_user!

  before_action :set_ticket, only: [:show, :edit, :update, :destroy]   
  def index
        @tickets = Ticket.all
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to ticket_index_path,
                  flash: { notice: 'Worker was successfully created.' }
    else
      redirect_to ticket_index_path,
                  flash: { alert: 'Invalid' }
    end
  end



  
  def edit
  end

  
  def update 
    if @ticket.update(ticket_params)
      redirect_to ticket_index_path,
                  flash: { notice: 'Ticket was successfully update.' }
    else 
      redirect_to ticket_index_path,
                  flash: { alert: 'Invalid' }
    end

  end

  def destroy
    @ticket.destroy
    redirect_to ticket_index_path,
                  flash: { notice: 'Ticket was successfully delete.' }
  
  end

  def ticket_params
    if params[:ticket].present?
      params.require(:ticket).permit(:id, :title, :description, :worker_id, :state, :created_at, :status)
    else
      params.permit(:id, :title, :description, :worker_id, :state, :created_at, :status)
    end
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def change_status
    @ticket = Ticket.find(params[:id])
    if params[:status].present? && Ticket::STATUSES.include?(params[:status].to_sym)
      @ticket.update(status: params[:status])
    end
    redirect_to @ticket, notice: "Status updated to #{@ticket.status}"
  end

end