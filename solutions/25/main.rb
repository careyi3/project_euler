# frozen_string_literal: true

module Problem25
  def self.run(_)
    last = 0
    current = 1
    idx = 1
    size = 1
    while size < 1000
      tmp = current
      current = last + current
      last = tmp
      size = current.to_s.size
      idx += 1
    end
    puts idx
  end
end
