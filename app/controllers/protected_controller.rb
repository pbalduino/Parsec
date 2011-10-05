class ProtectedController < ApplicationController
  before_filter :authenticate_user!

end
