class JamSessionsController < ApplicationController
  def index
    if params[:location].present?
      # @jam_sessions = JamSession.search_by_location(params[:query])
      @jam_sessions = JamSession.joins(spots: :instrument).where(instruments: { id: params[:instrument_id] }).search_by_location(params[:location])
    else
      @jam_sessions = JamSession.all
    end
  end
  
  def show
    @jam_session = JamSession.find(params[:id])
  end

  
  private


  def jam_session_params
    params.require(:jam_session).permit(:title, :description, :genre, :starts_at, :ends_at, :location)
  end
  
end
