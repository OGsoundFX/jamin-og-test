class JamSessionsController < ApplicationController
  def index
    # @jam_sessions = JamSession.search_by_location(params[:query])
    @jam_sessions = JamSession.includes(:spots, :instruments)
    @jam_sessions = @jam_sessions.where(instruments: { id: jam_session_params[:instrument_id] }) if jam_session_params[:instrument_id].present?
    @jam_sessions = @jam_sessions.search_by_location(jam_session_params[:location]) if jam_session_params[:location].present?

    x = params[:jam_session][:starts_at]
    @start_date = x.split("to")[0].strip
    @end_date = x.split("to")[1].strip

    @jam_sessions = @jam_sessions.where("starts_at > ?", @start_date) if jam_session_params[:starts_at].present?
    @jam_sessions = @jam_sessions.where("starts_at < ?", @end_date) if jam_session_params[:ends_at].present?

    # -------- access input from user ---------
    # @location_input = params["jam_session"]["location"]
    # @starts_at_input = params["jam_session"]["starts_at"]
    # @ends_at_input = params["jam_session"]["ends_at"]
    # @instrument_input = Instrument.find(params["jam_session"]["instrument_id"]).name if params["jam_session"]["instrument_id"].present?
    # access id of instruments
    @session_instruments_id = Instrument.all

    # # ------ mapbox --------
    @jam_sessions = @jam_sessions.geocoded #returns jam_sessions with coordinates

    @markers = @jam_sessions.map do |jam_session|
      {
        lat: jam_session.latitude,
        lng: jam_session.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { jam_session: jam_session })
      }
    end
  end


  def show
    @jam_session = JamSession.find(params[:id])
    @markers =   [{
        lat: @jam_session.latitude,
        lng: @jam_session.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { jam_session: @jam_session })
      }]
    @messages = JamSession.includes(messages: :user).find(params[:id])
  end


  private


  def jam_session_params
    params.require(:jam_session).permit(:title, :description, :genre, :starts_at, :ends_at, :location, :instrument_id)
  end

end
