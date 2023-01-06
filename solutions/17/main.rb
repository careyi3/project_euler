# frozen_string_literal: true

module Problem17
  ONES = {
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine'
  }.freeze
  TENS = {
    1 => 'ten',
    2 => 'twenty',
    3 => 'thirty',
    4 => 'forty',
    5 => 'fifty',
    6 => 'sixty',
    7 => 'seventy',
    8 => 'eighty',
    9 => 'ninety'
  }.freeze
  TEENS = {
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen'
  }.freeze
  def self.run(_)
    length = 0
    (1..1000).each do |num|
      string = ''
      digits = (10_000 + num).to_s.chars.map(&:to_i)[1, 5]
      digits.each_with_index do |digit, base|
        next if digit.zero?

        case base
        when 0
          string += "#{ONES[digit]}thousand"
        when 1
          string += "#{ONES[digit]}hundred"
          string += 'and' unless digits[2, 4].uniq.first.zero? && digits[2, 4].uniq.size == 1
        when 2
          string +=
            if digit == 1
              if digits[3].zero?
                TENS[digit]
              else
                lookup = digits[2, 3].join.to_i
                digits[3] = 0
                TEENS[lookup]
              end
            else
              TENS[digit]
            end
        when 3
          string += ONES[digit]
        end
      end
      length += string.size
      puts string
    end
    puts length
  end
end
