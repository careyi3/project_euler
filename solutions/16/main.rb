# frozen_string_literal: true

module Problem16
  def self.run(_)
    puts (2**1000).to_s.chars.map(&:to_i).sum
  end
end
