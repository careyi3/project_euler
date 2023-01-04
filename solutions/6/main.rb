# frozen_string_literal: true

module Problem6
  def self.run(_)
    sum_of_squares = 0
    sum = 0
    (1..100).each do |num|
      sum += num
      sum_of_squares += num**2
    end
    puts (sum**2) - sum_of_squares
  end
end
