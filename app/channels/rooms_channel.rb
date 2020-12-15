class RoomsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    puts "SUBED" * 10
    @room = Room.find_by(id: params[:room])
    stream_for @room
  end

  def speak(data)
    RoomsChannel.broadcast_to(@room, {room: @room, users: @room.users, messages: @room.messages})
  end

  def unsubscribed
    puts "UNSUBED" * 10
    # Any cleanup needed when channel is unsubscribed
  end
end
