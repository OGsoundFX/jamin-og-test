class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @instruments = UserInstrument.where(user_id: @user.id)
  end
end
