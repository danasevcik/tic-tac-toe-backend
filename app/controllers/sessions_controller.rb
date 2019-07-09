class SessionsController < ApplicationController

  def create_easy
    # create easy game with 5 points for score
    @session = Session.create(user_id: session_params[:user_id], score: session_params[:score])
    render json: { session: @session }, status: :created
  end

  def create_hard
    # create hard game with 10 points for score
    @session = Session.create(user_id: session_params[:user_id], score: session_params[:score])
    render json: { session: @session }, status: :created
  end

  def create_comp_easy
    byebug
  end

  def session_params
    params.require(:session).permit(:user_id, :score)
  end

end
