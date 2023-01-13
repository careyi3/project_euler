# frozen_string_literal: true

module Problem22
  def self.run(path)
    total = 0
    names = []
    FileReader.for_each_line(path) do |line|
      names << line.gsub('"', '')
    end
    names = names.sort
    names.each_with_index do |name, idx|
      sum = name.chars.map { |x| x.ord - 64 }.sum
      score = (idx + 1) * sum
      total += score
    end
    puts total
  end
end
