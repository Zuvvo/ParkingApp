class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_by(full_name: auth_hash.info.name, member_id: 3)
    session[:user_id] = @user.id
    redirect_to '/'
  end

  protected
  def auth_hash
    request.env['omniauth.auth']
  end
end