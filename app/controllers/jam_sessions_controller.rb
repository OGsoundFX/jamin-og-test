class JamSessionsController < ApplicationController
  def show
    @jam_session = JamSession.find(params[:id])
  end
end
