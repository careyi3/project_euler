# frozen_string_literal: true

module Problem7
  def self.run(_)
    primes = Primes.sieve(110_000)
    puts primes[10_000]
  end
end
