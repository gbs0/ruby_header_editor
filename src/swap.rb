def format_header
  STRUCT[:header] = STRUCT[:header].split("\n").map { |line| "#{line}\n"}.push("\n")
end

def write_files
  binding.pry
  format_header
  STRUCT[:files].each do |file_path|
    File.open(file_path, 'r+').first(12).write(STRUCT[:header])
  end
end

