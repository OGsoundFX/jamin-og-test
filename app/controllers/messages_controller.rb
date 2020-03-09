class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @jam_session = JamSession.find(params[:jam_session_id])
    @message.jam_session = @jam_session
    @message.user = current_user
    if @message.save
      ActionCable.server.broadcast("chat_room_#{@jam_session.id}", {
        message_partial: @message.to_json
      })
      respond_to do |format|
        format.html { redirect_to jam_session_path(@jam_session) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "jam_session/show" }
        format.js
      end
    end
  end


  private

  def message_params
    params.require(:message).permit(:content)
  end


end




