# frozen_string_literal: true

module Problem5
  def self.run(_)
    num = 0
    all_factored = false
    increment = (20 * 19 * 18 * 17)
    until all_factored
      num += increment
      factored = 0
      (11..16).each do |factor|
        break unless (num % factor).zero?

        factored += 1
      end
      all_factored = (factored == 6)
    end
    puts num
  end
end
