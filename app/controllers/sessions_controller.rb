class SessionsController < ApplicationController

  def create_easy
    @session = Session.create(user_id: session_params[:user_id], score: session_params[:score])
  end

  def session_params
    params.require(:session).permit(:user_id, :score)
  end

end
