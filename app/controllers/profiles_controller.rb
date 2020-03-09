class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @instruments = UserInstrument.where(user_id: @user.id)
    # @participation = Participation.find_by(user_id: @user.id)


    # if @participation != nil
    #   @spot = Spot.find_by(id: @participation.spot_id)
    #   @jam_sessions = JamSession.where(id: @spot.jam_session_id)
    # else
    #   puts "no jam"
    # end


    @participations = Participation.where(user_id: @user.id)

    if @participations != nil
      @jam_sessions = []
      @participations. each do |participation|
        spot = Spot.find_by(id: participation.spot_id)
        @jam_sessions << JamSession.find_by(id: spot.jam_session_id)
      end

    else
      puts "no jam"
    end
  end
end

=begin

@participations. each do |participation|
  spot = Spot.find_by(id: participation.spot_id)
  @jam_sessions << JamSession.find_by(id: spot.jam_session_id)
end


spot = Spot.find_by(jam_session_id: jam_session.id)

cl_image_tag spot.instrument.photo.key

=end
