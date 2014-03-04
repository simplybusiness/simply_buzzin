module MessagesHelper
  def options_for_printers
    codes = printer_codes
    options = []
    codes.each_with_index do |p, i|
      options << ["Printer #{i}", p]
    end
    options
  end

  def options_for_smiley_faces
    ["1", "2"]
  end
end
