# frozen_string_literal: true

module Problem8
  def self.run(path)
    digits = []
    FileReader.for_each_line(path) do |line|
      digits.push(*line.chars.map(&:to_i))
    end
    window = []
    largest = 0
    digits.each do |digit|
      window << digit
      next if window.size != 13

      prod = window.inject(:*)
      largest = prod if prod > largest
      window.shift
    end
    puts largest
  end
end
