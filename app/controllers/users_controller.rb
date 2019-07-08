class UsersController < ApplicationController

  def index
    @users = User.all
    render json: { users: @users }
  end

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
    @user = User.find(params[:user][:user_id])
    if !(@user.high_score)
      @user.high_score = 0
    end
    @user.high_score += params[:user][:score]
    @user.save
    render json: { user: @user }, status: :created
  end

  def hard_user
    @user = User.find(params[:user][:user_id])
    if !(@user.high_score)
      @user.high_score = 0
    end
    @user.high_score += params[:user][:score]
    @user.save
    render json: { user: @user }, status: :created
  end

  def user_params
    params.require(:user).permit(:name, :hometown, :fun_fact, :high_score)
  end


end
