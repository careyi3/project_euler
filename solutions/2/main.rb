# frozen_string_literal: true

module Problem2
  def self.run(_)
    last = 2
    second_last = 1
    sum_even = 2
    while last < 4_000_000
      fib = last + second_last
      second_last = last
      last = fib
      sum_even += last if (last % 2).zero? && last < 4_000_000
    end
    puts sum_even
  end
end
