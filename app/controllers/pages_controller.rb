class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @instruments = Instrument.all
    @display_footer = false
  end
end
