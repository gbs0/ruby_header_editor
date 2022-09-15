def format_header
  STRUCT[:header] = STRUCT[:header].split("\n").map { |line| "#{line}\n"}.push("\n")
end

def replace_header
  file_path = STRUCT[:files].first
  index = 0
  File.open(file_path, "r+") do |file|
    file.each_line do |line|
      break if line == "\n"
      file.write(STRUCT[:header][index])
      index += 1
    end
  end
end

def write_files
  format_header
  replace_header
end

