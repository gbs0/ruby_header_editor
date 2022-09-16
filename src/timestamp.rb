# We need to define a custom timestamp for each file
def generate_timestamp
  created_timestamp = Time.now.strftime("%Y/%m/%d %H:%m:%S")
  updated_timestamp = (Time.now + 100_000).strftime("%Y/%m/%d %H:%m:%S")
  generate_header(created_timestamp, updated_timestamp)
end

def generate_header(created_timestamp, updated_timestamp)
  STRUCT[:header].clear unless STRUCT[:header].nil?
  header_file = File.read(STRUCT[:header_file])
  header_file.gsub!("%*%", created_timestamp).gsub!("$*$", updated_timestamp)
  STRUCT[:header] = header_file
end

def generate_filename(file_path)
  STRUCT[:header].clear unless STRUCT[:header].nil?
  offset = 0
  file_name = File.basename(file_path)
  offset = SPACE_QTDY - file_name.length
  Error::EXCEPTION.unreachable_file_offset if offset <= 0
  offset.times { file_name += " " }
  
end

