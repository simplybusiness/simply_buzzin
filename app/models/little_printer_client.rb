require 'httparty'

class LittlePrinterClient

  def initialize(code)
    @code = code
  end

  def message(msg)
    url = "http://remote.bergcloud.com/playground/direct_print/#{@code}"
    puts "Sending message: #{msg}"
    HTTParty.post(url, :body => {:html => "#{msg}"})
    puts "Sent message: #{msg}"
    #`curl -X POST -d "html=<html><head><meta charset='utf-8'></head><body><p>#{msg}</p></body></html>" http://remote.bergcloud.com/playground/direct_print/#{@code}`
  end
end
