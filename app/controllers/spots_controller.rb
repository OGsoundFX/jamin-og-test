class SpotsController < ApplicationController
  def new
    @jam_session = JamSession.find(params[:jam_session_id])
    @spot = Spot.new
  end

  def create
    @jam_session = JamSession.find(params[:jam_session_id])
    @instrument = Instrument.find(spot_params[:instruments])
    @spot = Spot.new(jam_session: @jam_session, instrument: @instrument)
    if @spot.save
      @participation = Participation.new(spot_id: @spot.id, user: current_user)
      @participation.save
      redirect_to jam_session_path(@jam_session)
    else
      render "new"
    end
  end

  private

  def spot_params
    params.permit(:instruments)
  end
end
