require_relative '../inc/includes'

def main(argv)
  set_params(argv)
end

def set_params(arg_list)
  if arg_list.size != 2
    return Error::Exception.missing_params
  else
    open_header(arg_list)
    parse_directory(arg_list)
    write_files
  end
end
