def valid_header(file)
  return Error::EXCEPTION.invalid_header_file unless File.file?(file)
  return Error::EXCEPTION.invalid_txt_file if valid_txt?(file)
  return Error::EXCEPTION.empty_file if File.zero?(file)
  header_file = File.open(file)
  STRUCT[:header] = header_file
end

def valid_txt?(file)
  file_grep = file.split(".").select { |accum| accum == "txt" }
  return file_grep.empty?
end