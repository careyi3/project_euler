# frozen_string_literal: true

module Problem23
  def self.run(_)
    abundant_nums = []
    (1..28_123).each do |num|
      abundant_nums << num if abundant?(num)
    end
    abundant_sums = []
    abundant_nums.each do |x|
      abundant_nums.each do |y|
        abundant_sums << (x + y)
      end
    end
    non_abundant_sums = (1..28_123).to_a - abundant_sums.uniq
    puts non_abundant_sums.sum
  end

  def self.abundant?(num)
    div_sum = 1
    (2..num / 2).each do |div|
      div_sum += div if (num % div).zero?
      return true if div_sum > num
    end
    div_sum > num
  end
end
