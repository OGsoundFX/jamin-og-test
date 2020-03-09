class JamSessionsController < ApplicationController
  def index
    # @jam_sessions = JamSession.search_by_location(params[:query])
    @jam_sessions = JamSession.includes(:spots, :instruments)
    @jam_sessions = @jam_sessions.where(instruments: { id: jam_session_params[:instrument_id] }) if jam_session_params[:instrument_id].present?
    @jam_sessions = @jam_sessions.search_by_location(jam_session_params[:location]) if jam_session_params[:location].present?
    # access id of instruments
    @session_instruments_id = Instrument.all

    # # ------ mapbox --------
    @jam_sessions = @jam_sessions.geocoded #returns jam_sessions with coordinates

    @markers = @jam_sessions.map do |jam_session|
      {
        lat: jam_session.latitude,
        lng: jam_session.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { jam_session: jam_session }),
      }
    end
  end

  def show
    @jam_session = JamSession.find(params[:id])
    @markers = [{
      lat: @jam_session.latitude,
      lng: @jam_session.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { jam_session: @jam_session }),
    }]
    @messages = JamSession.includes(messages: :user).find(params[:id])
  end

  def new
    @jam_session = JamSession.new
  end

  def create
    @jam_session = JamSession.new(jam_session_params)
    @jam_session.user = current_user
    if @jam_session.save
      redirect_to jam_session_path(@jam_session)
    else
      render "new"
    end
  end

  private

  def jam_session_params
    params.require(:jam_session).permit(:title, :description, :genre, :starts_at, :ends_at, :location)
  end
end
