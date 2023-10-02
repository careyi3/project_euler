# frozen_string_literal: true

module Problem24
  def self.run(_)
    puts %w[0 1 2 3 4 5 6 7 8 9].permutation.map(&:join).sort[999_999]
  end
end
