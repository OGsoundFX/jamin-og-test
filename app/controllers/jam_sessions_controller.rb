class JamSessionsController < ApplicationController
  def index
    # @jam_sessions = JamSession.search_by_location(params[:query])
    @jam_sessions = JamSession.includes(:spots, :instruments)
    @jam_sessions = @jam_sessions.where(instruments: { id: params[:instrument_id] }) if params[:instrument_id].present?
    @jam_sessions = @jam_sessions.search_by_location(params[:location]) if params[:location].present?
    # access id of instruments
    @session_instruments_id = Instrument.all

    # mapbox --------
    @jam_sessions = JamSession.geocoded #returns flats with coordinates

    @markers = @jam_sessions.map do |jam_session|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
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
