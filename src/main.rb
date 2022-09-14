require_relative '../inc/includes'

def main(argv)
  serialize_params(argv)
end

def serialize_params(arg_list)
  if arg_list.size != 2
    return Error::EXCEPTION.missing_params
  else
    open_header(arg_list)
    parse_directory(arg_list)
  end
end

main(ARGV)