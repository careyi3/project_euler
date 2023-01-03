# frozen_string_literal: true

module Problem4
  def self.run(_)
    largest = 0
    (100..999).each do |x|
      (100..999).each do |y|
        num = x * y
        largest = num if palindrome?(num) && num > largest
      end
    end
    puts largest
  end

  def self.palindrome?(num)
    chars = num.to_s.chars
    while chars.size > 1
      return false unless chars.first == chars.last

      chars.pop
      chars.shift
    end
    true
  end
end
