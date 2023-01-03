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
end
