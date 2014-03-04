module MessagesHelper
  def options_for_printers
    codes = printer_codes
    options = []
    codes.each_with_index do |p, i|
      options << ["Printer #{p}", p]
    end
    options
  end

  def options_for_smiley_faces
    options = []
    ["boy","girl","jason"].each do |type|
      (1..7).each do |pos|
        options << ["#{type} face #{pos}", "#{type}_face_0#{pos}.png"]
      end
    end
    options
  end
end
