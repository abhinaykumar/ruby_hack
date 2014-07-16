def sum(int_ary=[])
	return 0 if int_ary.empty?
	int_ary.inject(:+)
end

p sum([1,2,3])
p sum([])

def max_2_sum(int_arry=[])
	return 0 if int_arry.empty?
	return int_arry if int_arry.size==1
	int_arry.sort
	a= int_arry[-1]
	b= int_arry[-2]
	return a+b
end
p max_2_sum([1,2,-3,-5,-6,-7])
p max_2_sum([])
p max_2_sum([1])


def sum_to_n?(int_array=[],n)
	return false if int_array.size <=1
	pair_array=int_array.combination(2)
	pair_array.any? do |x|
		return true if x.inject(:+) == n
	end
	false
end

p sum_to_n?([1,2,3,4],4)
p sum_to_n?([])
p sum_to_n?([1],3)