class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :jam_sessions]

  def home
    @instruments = Instrument.all
    @display_footer = false
    @jam_sessions = JamSession.all
  end
end
