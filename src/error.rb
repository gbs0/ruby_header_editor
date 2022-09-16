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
      puts "Error: Path specified is not a valid file - missing argument of type file"
      exit
    end

    def self.empty_file
      puts "Error: Invalid header file - Header file is empty"
      exit
    end

    def self.not_a_directory
      puts "Error: Invalid directory - Path specified is not a valid directory"
      exit
    end

    def self.files_not_found
      puts "Error: Files not found - Non existent files with .c or .h extension"
      exit
    end

    def self.unreachable_file_offset
      puts "Error: Failed to generate header - Spaces offset is unreachable"
      exit
    end
  end
end