class UsersController < ApplicationController

  def create
    byebug
    # create user with username and password
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: @user }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def user_params
    params.require(:user).permit(:name)
  end


end
