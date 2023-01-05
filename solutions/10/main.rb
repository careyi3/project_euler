# frozen_string_literal: true

module Problem10
  def self.run(_)
    primes = Primes.sieve(2_000_000)
    puts primes.sum
  end
end
