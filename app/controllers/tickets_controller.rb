class TicketsController < ProtectedController
  def index
    @tickets = Ticket.where('user_id = ?', current_user.id).order('created_at')
  end

  def new
    @ticket = Ticket.new
    @users = User.all.map { |user| [user.email, user.id] }
  end

  def create
    @ticket = Ticket.create params[:ticket]

    Comment.create :ticket_id => @ticket.id, :comment => params[:comment]

    flash[:notice] = 'Ticket incluido'

    redirect_to root_url

  end

end

