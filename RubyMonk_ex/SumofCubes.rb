# Compute the sum of cubed for a given range
# a thorugh b.
# Write a method called sum_of_cubes to
# accomplish this task
# Ex: Given range 1 to 3 the method should return 36
require 'benchmark'

# Method 1
def sum_of_cubes(a, b)
sum = 0
(a..b).to_a.each do |n| 
sum = sum + (n ** 3)
end
return sum
end

p sum_of_cubes(3, 5)

# Method 2
def sum_of_cubes2(a, b)
return (a..b).to_a.map{|sum| sum ** 3}.inject(:+)
end

p sum_of_cubes2(3, 5)

iterations = 100_000

Benchmark.bm do |bm|
bm.report do
iterations.times do
sum_of_cubes(3, 5)
end
end

bm.report do
iterations.times do
sum_of_cubes2(3, 5)
end
end
end
