# frozen_string_literal: true

module Problem67
  def self.run(path)
    tree = {}
    last_row = []
    count = 0
    FileReader.for_each_line(path) do |line|
      digits = []
      line.split.each do |num|
        digits << "#{count}:#{num.to_i}"
        count += 1
      end
      if last_row.empty?
        tree[digits.first] = []
        last_row = digits
        next
      end
      idx = 0
      digits.each_cons(2) do |pair|
        tree[last_row[idx]] = pair
        pair.each do |digit|
          tree[digit] = []
        end
        idx += 1
      end
      last_row = digits
    end

    puts walk(tree, {}, '0:59', 0)
  end

  def self.walk(tree, cache, node, sum)
    return cache[node] unless cache[node].nil? || sum > cache[node]
    return sum + node.split(':').last.to_i if tree[node].empty?

    cache[node] = sum

    left, right = tree[node]

    left_sum = walk(tree, cache, left, sum + node.split(':').last.to_i)
    right_sum = walk(tree, cache, right, sum + node.split(':').last.to_i)

    [left_sum, right_sum].max
  end
end
