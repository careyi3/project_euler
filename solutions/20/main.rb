# frozen_string_literal: true

module Problem20
  def self.run(_)
    num = 1
    100.times do |n|
      num *= (n + 1)
    end
    puts num.to_s.chars.map(&:to_i).sum
  end
end
