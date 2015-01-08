# Given an array, return true if all the
# elements are Fixnums.

# You need to write array_of_fixnums? method to accomplish this task

# Given [1,2,3] the method should return ture.

def array_of_fixnums?(array)
  array.all? { |x| x.is_a? Fixnum }
end

p array_of_fixnums?([1,3,4,4])
