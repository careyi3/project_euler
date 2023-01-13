# frozen_string_literal: true

module Problem21
  def self.run(_)
    sum = 0
    cache = {}
    (1..10_000).each do |n|
      pds = prop_div_sum(n, cache)
      next if n == pds

      n_pds = prop_div_sum(pds, cache)
      sum += n if n_pds == n
    end
    puts sum
  end

  def self.prop_div_sum(n, cache)
    return cache[n] unless cache[n].nil?

    divisors = [1]
    (2..n / 2).each do |i|
      div, mod = n.divmod(i)
      if mod.zero?
        divisors << i
        divisors << div
      end
    end
    cache[n] = divisors.uniq.sum
    cache[n]
  end
end
