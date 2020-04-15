class JamSessionsController < ApplicationController
  def index
    # @jam_sessions = JamSession.search_by_location(params[:query])

    @jam_sessions = JamSession.includes(:spots, :instruments)
    # @jam_sessions = @jam_sessions.where(instruments: { id: jam_session_params[:instrument_id] }) if jam_session_params[:instrument_id].present?
    @jam_sessions = @jam_sessions.where(instruments: { id: params["jam_session"]["instrument_id"] }) if params["jam_session"]["instrument_id"].present?
    @jam_sessions = @jam_sessions.where(genre: params["jam_session"]["genre"]) if params["jam_session"]["genre"].present?
    @jam_sessions = @jam_sessions.search_by_location(params["jam_session"]["location"]) if params["jam_session"]["location"].present?


    if params[:jam_session] && params[:jam_session][:starts_at]
      x = params[:jam_session][:starts_at]

      @start_date = x&.split("to")[0]&.strip
      @end_date = x&.split("to")[1]&.strip

      @jam_sessions = @jam_sessions.where("starts_at > ?", @start_date) if @start_date.present?
      @jam_sessions = @jam_sessions.where("starts_at < ?", @end_date) if @end_date.present?
    end

    # -------- access input from user ---------
    # @location_input = params["jam_session"]["location"]
    # @starts_at_input = params["jam_session"]["starts_at"]
    # @ends_at_input = params["jam_session"]["ends_at"]
    # @instrument_input = Instrument.find(params["jam_session"]["instrument_id"]).name if params["jam_session"]["instrument_id"].present?
    geocode(@jam_sessions)
    # access id of instruments
    @session_instruments_id = Instrument.all
  end

  def show
    @jam_session = JamSession.find(params[:id])
    @markers = [{
      lat: @jam_session.latitude,
      lng: @jam_session.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { jam_session: @jam_session }),
      image_url: helpers.asset_url("custom_marker.png"),
    }]
    @messages = JamSession.includes(messages: :user).find(params[:id])
  end

  def new
    @jam_session = JamSession.new
  end

  def create
    @jam_session = JamSession.new(jam_session_params)
    @jam_session.user = current_user
    year = params["jam_session"]["date"][0..3].to_i
    month = params["jam_session"]["date"][5..6].to_i
    day = params["jam_session"]["date"][8..9].to_i
    start_hour = (params["jam_session"]["starts_at(4i)"].to_i + 2)
    start_minutes = params["jam_session"]["starts_at(5i)"].to_i
    end_hour = (params["jam_session"]["ends_at(4i)"].to_i + 2)
    end_minutes = params["jam_session"]["ends_at(5i)"].to_i
    @jam_session.starts_at = Time.new(year, month, day, start_hour, start_minutes)
    @jam_session.ends_at = Time.new(year, month, day, end_hour, end_minutes)
    if @jam_session.save
      redirect_to jam_session_path(@jam_session)
    else
      render "new"
    end
  end

  private

  def geocode(jam_sessions)
    @jam_sessions = @jam_sessions.geocoded #returns jam_sessions with coordinates

    @markers = @jam_sessions.map do |jam_session|
      {
        lat: jam_session.latitude,
        lng: jam_session.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { jam_session: jam_session }),
        image_url: helpers.asset_url("custom_marker.png"),
      }
    end


  end

  def jam_session_params
    params.require(:jam_session).permit(:title, :description, :genre, :starts_at, :ends_at, :location, :instrument_id)
  end
end
