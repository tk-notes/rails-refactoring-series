module Api
  class MessagesController < BaseController
    def create
      @message = Message.new(message_params)

      if @message.save
        render json: {},
               root: false,
               status: 201
      else
        render json: { errors: @message.errors.messages },
               root: false,
               status: 400
      end
    end

    private

    def message_params
      # permit your params here
    end
  end
end
