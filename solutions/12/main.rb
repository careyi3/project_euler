# frozen_string_literal: true

module Problem12
  def self.run(_)
    most_divisors = 0
    i = 1
    num = 0
    while most_divisors < 500
      num = ((i**2) + i) / 2
      divisors = []
      start = 1
      finish = num
      done = false
      until done
        done = true if finish.zero? || start == finish || start > finish
        (start..finish).each do |n|
          done = true if n == finish
          next unless (num % n).zero?

          divisors << n
          divisors << (num / n)
          start = n + 1
          finish = (num / n) - 1
          break
        end
      end
      if divisors.size > most_divisors
        most_divisors = divisors.size
        # puts "#{num}:\t#{divisors.sort}"
      end
      i += 1
    end
    puts num
  end
end
