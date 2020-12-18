class MessagesController < ApplicationController

    def index
        messages = Message.all
        render json: messages
    end

    def create
       
        message = Message.new(message_params)
        if message.save
            room = Room.find(params[:message][:room_id])
            RoomsChannel.broadcast_to(room, {
                room: room,
                users: room.users,
                messages: room.messages.map do |message|
                    {:user => message.user, :message => message}
                end
            })
        else
            puts message.errors.messages
        end
    end

    private

    def message_params
        params.require(:message).permit(:content, :user_id, :room_id)
    end
end
