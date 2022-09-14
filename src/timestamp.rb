# We need to define a custom timestamp for each file
def generate_timestamp
  header_file = File.read(STRUCT[:header])
  timestamp = Time.now.strftime("%Y/%m/%d %H:%m:%S")
  binding.pry
end