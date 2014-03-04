class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :printer_codes
  def printer_codes
    PrinterPool.printer_codes
  end
end
