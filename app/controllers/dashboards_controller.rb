class DashboardsController < ApplicationController
  def index
    @user = current_user
    @instruments = UserInstrument.where(user_id: @user.id)
    @participations = Participation.where(user_id: @user.id)
    date = Time.now

    if @participations != nil
      @jam_sessions = []

      @participations. each do |participation|
        spot = Spot.find_by(id: participation.spot_id)
        @jam_sessions << JamSession.find_by(id: spot.jam_session_id)

      end
      @future_jam_sessions = []
      @past_jam_sessions = []
      @jam_sessions.each do |jam_session|
        if jam_session.starts_at > date
          @future_jam_sessions << jam_session
        else
          @past_jam_sessions << jam_session
        end
      end
    else
      puts "no jam"
    end
  end
end
