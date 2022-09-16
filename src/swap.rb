def format_header
  STRUCT[:header] = STRUCT[:header].split("\n").map { |line| "#{line}\n"}.push("\n")
end

def replace_header
  file_path = STRUCT[:files].first
  index = 0
  STRUCT[:rest_of_file] = []
  File.open(file_path, "r+") do |file|
    file.each_with_index do |line, index|
      p "#{index} - #{line}"
      if index <= 10
        line << STRUCT[:header][index]
        index += 1
      else
        line << line
        # file.write(line)
      end
    end
  end
end

def write_files
  format_header
  replace_header
end

