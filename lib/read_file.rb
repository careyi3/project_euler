# frozen_string_literal: true

class FileReader
  class << self
    def read_file(path)
      File.read(path.strip)
    end

    def for_each_line(path, no_strip: false)
      idx = 0
      File.readlines(path).each do |line|
        line = line.strip unless no_strip
        yield(line, idx)
        idx += 1
      end
    end
  end
end
