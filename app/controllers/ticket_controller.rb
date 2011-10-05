class TicketController < ProtectedController
  def index
    @tickets = Ticket.find(:all, :order => 'created_at')
  end

end

