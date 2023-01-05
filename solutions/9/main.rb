# frozen_string_literal: true

module Problem9
  def self.run(_)
    (1..1000).each do |a|
      (1..1000).each do |b|
        c = Math.sqrt((a**2) + (b**2))
        next unless (c % 1).zero?

        c = c.to_i
        if a + b + c == 1000
          puts a * b * c
          break
        end
      end
    end
  end
end
