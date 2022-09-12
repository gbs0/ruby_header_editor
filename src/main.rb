require_relative '../inc/includes'

def main(argv)
  filter_params(argv)
end

def filter_params(arg_list)
  return Error::EXCEPTION.missing_params if arg_list.size != 2
  valid_header(arg_list[0])
  # puts argv[1] 
end

def valid_header(file)
  return Error::EXCEPTION.invalid_header_file unless File.file?(file)
  return Error::EXCEPTION.invalid_txt_file unless valid_txt?(file)
  return Error::EXCEPTION.empty_file if File.zero?(file)
  header_file = File.open(file)
  STRUCT[:header] = header_file
  puts "File opened with success!"
end

main(ARGV)