# frozen_string_literal: true

module Problem1
  def self.run(_)
    nums = []
    999.times do |n|
      num = n + 1
      num_mod5 = num % 5
      num_mod3 = num % 3
      nums << num if [num_mod3, num_mod5].any?(0)
    end
    puts nums.sum
  end
end
