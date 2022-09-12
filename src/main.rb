require_relative '../inc/includes'

def main(argv)
  filter_params(argv)
end

def filter_params(arg_list)
  return Error::EXCEPTION.missing_params if arg_list.size != 2
  valid_header(arg_list[0])
  # puts argv[1] 
end



main(ARGV)