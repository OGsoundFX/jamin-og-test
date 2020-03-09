class JamSessionsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_room_#{params[:jam_session_id]}"
  end
end
