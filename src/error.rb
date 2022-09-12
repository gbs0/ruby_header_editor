module Error
  module EXCEPTION
    def self.missing_params
      puts "Error: Missing Params - Usage $ main.rb header_file path_to_files"
      exit
    end

    def self.invalid_txt_file
      puts "Error: Invalid header file - Header file is not a valid .txt"
      exit
    end

    def self.invalid_header_file
      puts "Error: Path specified is not a valid file - missing argurment of type file"
      exit
    end

    def self.empty_file
      puts "Error: Invalid header file - Header file is empty"
      exit
    end
  end
end