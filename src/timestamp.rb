# We need to define a custom timestamp for each file
def generate_timestamp
  created_timestamp = Time.now.strftime("%Y/%m/%d %H:%m:%S")
  updated_timestamp = (Time.now + 10_000).strftime("%Y/%m/%d %H:%m:%S")
  generate_header(created_timestamp, updated_timestamp)
end

def generate_header(created_timestamp, updated_timestamp)
  header_file = File.read(STRUCT[:header_file])
  header_file.gsub!("%*%", created_timestamp).gsub!("$*$", updated_timestamp)
  STRUCT[:header] = header_file
end

