# frozen_string_literal: true

module Problem14
  def self.run(_)
    longest = 0
    longest_num = 0
    (2..999_999).each do |n|
      length = 1
      m = n
      while m > 1
        m =
          if (m % 2).zero?
            m / 2
          else
            (3 * m) + 1
          end
        length += 1
      end
      if length > longest
        longest = length
        longest_num = n
      end
    end
    puts longest_num
  end
end
