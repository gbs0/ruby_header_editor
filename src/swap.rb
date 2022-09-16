def format_header
  STRUCT[:header] = STRUCT[:header].split("\n").map { |line| "#{line}\n"}
end

def build_file_body(file_path)
  index = 0
  file_body = []
  File.open(file_path, "r") do |file|
    file.each_with_index do |line, index|
      index <= 10 ? next : file_body.push(line)
    end
  end
  STRUCT[:file_body] = file_body
end

def build_file_content
  file_content = []
  STRUCT[:file_content] = STRUCT[:header].append(STRUCT[:file_body]).flatten!
end

def write_files
  STRUCT[:files].each do |file_path|
    build_file_body(file_path)
    build_file_content
    File.open(file_path, "r+") do |file|
      STRUCT[:file_content].each { |line| file.write(line) } 
    end
  end
end

def build_files
  format_header
  write_files
end

