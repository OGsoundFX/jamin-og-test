class JamSessionsController < ApplicationController
  def index
    @jam_sessions = JamSession.all
  end
end
