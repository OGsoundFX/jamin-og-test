class JamSessionsController < ApplicationController

  def show
    @jam_session = JamSession.find(params[:id])
  end

  def index
    @jam_sessions = JamSession.all

  end
end
