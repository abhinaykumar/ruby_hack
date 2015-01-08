# Given an Array, return the elements that are
# present exactly once in the array

# You need to write a method called non_duplicated_values
# to accomplish this task

# Ex: given [1,2,3,3,4,5,6] the method should return [1,4,5]

def non_duplicated_values(values)
ary = Array.new
values.each do |n|
  if values.count(n) == 1
    ary.push(n)
  end
end
  return ary
end

p non_duplicated_values([1,2,3,3,2,4,5])

# Method 2
def non_duplicated_values2(values)
  arry = values.find_all { |x| values.count(x) == 1}
end

p non_duplicated_values2([1,2,2,3,3,4,5])

require 'benchmark'
iterations = 100_000
Benchmark.bm do |bm|

bm.report do
iterations.times do
non_duplicated_values([1,2,2,3,3,4,5])
end
end

bm.report do
iterations.times do
non_duplicated_values2([1,2,2,3,3,4,5])
end
end
end
