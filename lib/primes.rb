# frozen_string_literal: true

module Primes
  def self.primes
    primes = {}
    FileReader.for_each_line("#{Dir.pwd}/lib/primes", no_strip: true) do |line|
      ps = line.strip.split.map(&:to_i)
      ps.each do |pp|
        primes[pp] = pp
      end
    end
    primes
  end

  def self.sieve(limit)
    nums = Array.new(limit + 1) { true }
    nums.each_with_index do |val, idx|
      next if idx < 2
      next unless val

      num = idx
      while num < limit
        num += idx
        break if num > limit

        nums[num] = false
      end
    end
    primes = []
    nums.each_with_index do |val, idx|
      primes << idx if val && idx > 1
    end
    primes
  end
end
