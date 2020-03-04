class JamSessionsController < ApplicationController
  def index
    if params[:location].present?
      # @jam_sessions = JamSession.search_by_location(params[:query])
      @jam_sessions = JamSession.joins(spots: :instrument).where(instruments: { id: params[:instrument_id] }).search_by_location(params[:location])
    else
      @jam_sessions = JamSession.all
    end
    # geocode(@jam_sessions)
  end

  # def new
  # @jam_session = JamSession.new
  # end

  #   def show
  # @user = current_user
  # @jam_session = JamSession.find(params[:id])
  # @participations = Participation.all.select { |participation| participation. == @jam_session }
  # @booking = Booking.new
  # @users = User.all
  # @booking.property = @property
  #   end

  #   # create new properties

  #   def create
  # @jam_session = JamSession.new(jam_session_params)
  # @jam_session.user = current_user
  # if @jam_session.save
  #   redirect_to jam_session_path(@jam_session)
  # else
  #   render "new"
  # end
  #   end

  private

  # def geocode(jam_sessions)
  # jam_sessions.geocoded #returns flats with coordinates
  # @markers = jam_sessions.map do |jam_session|
  # {
  # lat: jam_session.latitude,
  # lng: jam_session.longitude,
  # infoWindow: render_to_string(partial: "info_window", locals: { jam_session: jam_session }),
  # image_url: helpers.asset_url("custom_marker.png"),
  # }
  # end
  # end

  def jam_session_params
    params.require(:jam_session).permit(:title, :description, :genre, :starts_at, :ends_at, :location)
  end
end
