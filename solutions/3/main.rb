# frozen_string_literal: true

module Problem3
  def self.run(_)
    primes = Primes.primes
    # num = 13_195
    num = 600_851_475_143
    factors = []
    Kernel.loop do
      primes.each do |prime, _|
        div, rem = num.divmod(prime)
        if rem.zero?
          factors << prime
          num = div
        end
      end
      break if num == 1
    end
    puts factors.max
  end
end
