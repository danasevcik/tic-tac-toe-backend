class SessionsController < ApplicationController

  def create_easy
    @session = Session.create(user_id: session_params[:user_id], score: session_params[:score])
    render json: { session: @session }, status: :created
  end

  def create_hard
    byebug
    @session = Session.create(user_id: session_params[:user_id], score: session_params[:score])
    render json: { session: @session }, status: :created
  end

  def session_params
    params.require(:session).permit(:user_id, :score)
  end

end
