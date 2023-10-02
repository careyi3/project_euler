# frozen_string_literal: true

module Problem26
  def self.run(_)
    max = 0
    digit = 0
    (2..999).each do |d|
      digits = (10**100_000) / d
      size = digits.to_s.chars.each_slice(5).to_a.uniq.flatten.size
      if size > max
        max = size
        digit = d
      end
    end
    puts digit
  end
end
