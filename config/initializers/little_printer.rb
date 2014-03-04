ENV['PRINTER_CODES'] || raise("No printer codes found. Please set them in ENV['PRINTER_CODES'] separated by ',' (comma)")
PrinterPool.printer_codes = ENV['PRINTER_CODES'].split(",").map(&:strip)
