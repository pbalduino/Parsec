class ProtectedController < ApplicationController
  before_filter :check_authentication

  private
  def check_authentication
    unless user_signed_in?
      flash[:error] = "Acesso negado"
      redirect_to new_user_session_url
    end
  end

end

