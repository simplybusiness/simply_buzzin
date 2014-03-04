class MessagesController < ApplicationController
  before_filter :load_ref_data

  def index
  end

  def new
    @message = Message.new
  end

  def create

    message_params = params['message']
    message = "<html><head><meta charset='utf-8'></head><body><p>#{message_params['icon']}</p><p>#{message_params['title']}</p><p>#{message_params['header']}</p><p>#{message_params['body']}</p></body></html>"

    binding.pry
    little_printer_client = LittlePrinterClient.new(ENV["LITTLE_PRINTER_ID"])
    little_printer_client.send(message)
  end

  def load_ref_data
    @printers = ['Printer 1', 'Printer 2']
    @smiley_faces = ['Smiley 1', 'Smiley 2']
  end
end
