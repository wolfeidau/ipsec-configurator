# Author:: Mark Wolfe (mailto:mark@wolfe.id.au)

# This controller holds actions for user sign in and sign out.
class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email]) || User.find_by_username(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: t('session.login_success')
    else
      flash.now.alert = t('session.login_failed')
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: t('session.logout')
  end

end
