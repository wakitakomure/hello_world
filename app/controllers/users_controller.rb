class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
    if @user.save
            redirect_to '/', success: '登録が完了しました'
    else
        flash.now[:danger] = "登録に失敗しました"
        render :new
    end
  end
end