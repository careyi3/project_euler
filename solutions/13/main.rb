# frozen_string_literal: true

module Problem13
  def self.run(path)
    sum = 0
    FileReader.for_each_line(path) do |line|
      sum += line.to_i
    end
    puts sum.to_s.chars[0, 10].join
  end
end
