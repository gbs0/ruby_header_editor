def write_files
  STRUCT[:files].each do |file_path|
    File.open('filename.txt', 'r+').first(10).write(STRUCT[:header])
  end
end