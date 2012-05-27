class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: t('user.created')
    else
      render "new"
    end
  end

  def edit
    @user = User.find_by_id(session[:user_id])
  end

  def update
    @user = User.find_by_id(session[:user_id])

    if @user.update_attributes(params[:user])
      flash[:notice] = t("user.updated")
      redirect_to root_path
    else
      flash.alert = t("user.not_updated")
      render 'edit'
    end
  end

end
