class SessionsController < ApplicationController
  skip_before_action :ensure_authenticated_user, only: %i( new create )

  def new
    @users = User.all
  end

  def create
    authenticate_user(params[:user_id])
    redirect_to session_path(id: @current_user.id)
  end

  def destroy
    unauthenticate_user
    redirect_to new_session_url
  end

  def show; end

end
