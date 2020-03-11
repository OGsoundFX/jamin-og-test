class ProfilesController < ApplicationController
  def show

    @user = User.find(params[:id])
    @reviews = Review.where(receiver_id: @user.id)
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

=begin

      @future_jam_sessions = []
      @past_jam_sessions = []
      @participations. each do |participation|
        spot = Spot.find_by(id: participation.spot_id)
        @future_jam_sessions << JamSession.where( "starts_at > ?", date )
        @past_jam_sessions << JamSession.where( "starts_at < ?", date )
      end


=end


=begin

      @jam_sessions = []
      @participations. each do |participation|
        spot = Spot.find_by(id: participation.spot_id)
        @jam_sessions << JamSession.find_by(id: spot.jam_session_id)
      end


=end

