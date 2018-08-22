

def missing_numbers(unsorted_arr)
  raise ArgumentError.new("Input should be an array") unless unsorted_arr.class == Array
  return [] if unsorted_arr.empty? 
  nat_unsorted_arr = unsorted_arr.select {|n| n >= 0}
  only_naturals = nat_unsorted_arr.size == unsorted_arr.size
  raise ArgumentError.new("Only natural numbers are allowed") unless only_naturals
  sorted_arr = unsorted_arr.sort
  first = sorted_arr.first
  last = sorted_arr.last
  (first..last).to_a - unsorted_arr
end
