def find_matches(*arrays)
  # sum = arrays.reduce([], :concat)
  sum = arrays.flatten
  grouped = sum.group_by { |i| i }
  grouped.select { |k,v| v.size == arrays.size }.keys
end