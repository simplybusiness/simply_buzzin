module MessagesHelper
  def options_for_printers
    codes = printer_codes
    options = codes.each_with_index do |p, i|
      [p, "Printer {i}"]
    end
    options
  end

  def options_for_smiley_faces
    ["1", "2"]
  end
end
