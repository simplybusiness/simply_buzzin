class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    message_params = params['message']
    message = render_to_string :partial => "message_template", :locals => {:message_params => message_params}

    little_printer_client = LittlePrinterClient.new(message_params['printer'])
    little_printer_client.message(message)

    flash[:notice] = "Message sent!"
    redirect_to root_url
  end
end
