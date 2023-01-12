# frozen_string_literal: true

module Problem19
  def self.run(_)
    day = Date.parse('1901-01-01')
    count = 0
    until day.day == 31 && day.month == 12 && day.year == 2000
      count += 1 if day.sunday? && day.day == 1
      day += 1
    end
    puts count
  end
end
