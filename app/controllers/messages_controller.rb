class MessagesController < ApplicationController
  before_filter :load_ref_data

  def index
  end

  def new
    @message = Message.new
  end

  def create
  end

  def load_ref_data
    @printers = ['Printer 1', 'Printer 2']
    @smiley_faces = ['Smiley 1', 'Smiley 2']
  end
end
