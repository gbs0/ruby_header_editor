def open_header(arg_list)
  file = arg_list[0]
  return Error::EXCEPTION.invalid_header_file unless File.file?(file)
  return Error::EXCEPTION.invalid_txt_file if valid_txt?(file)
  return Error::EXCEPTION.empty_file if File.zero?(file)
  header_file = File.open(file)
  STRUCT[:header_file] = header_file
end

def valid_txt?(file)
  file_grep = file.split(".").select { |accum| accum == "txt" }
  return file_grep.empty?
end

def parse_directory(arg_list)
  directory_path_str = arg_list[1]
  return Error::EXCEPTION.not_a_directory if File.file?(directory_path_str)
  files = Dir.glob("#{directory_path_str}/**/*").select { |path| File.file?(path) }
  files = files.select { |path| path.end_with?(".c") || path.end_with?(".h") }
  if files.empty?
    return Error::EXCEPTION.files_not_found
  else
    STRUCT[:files] = files.sort_by { |path| path.reverse }.flatten
    generate_timestamp
  end
end