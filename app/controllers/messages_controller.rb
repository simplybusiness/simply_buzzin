class MessagesController < ApplicationController

  def index
  end

  def new
    @message = Message.new
  end

  def create

    message_params = params['message']
    message = "<html><head><meta charset='utf-8'></head><body><p>#{message_params['icon']}</p><p>#{message_params['title']}</p><p>#{message_params['header']}</p><p>#{message_params['body']}</p></body></html>"

    binding.pry
    little_printer_client = LittlePrinterClient.new(message_params['printer'])
    little_printer_client.message(message)
  end
end
