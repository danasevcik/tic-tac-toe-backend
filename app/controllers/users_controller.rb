class UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: @user }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def find
    @user = User.find_by(name: user_params[:name])
    if @user.valid?
      render json: { user: @user }, status: :created
    else
      render json: { error: 'failed to find user' }, status: :not_acceptable
    end
  end

  def easy_user
    byebug
  end

  def hard_user
    byebug
  end

  def user_params
    params.require(:user).permit(:name, :hometown, :fun_fact)
  end


end
