def kaprekar?(k)
  kapsq = (k ** 2).to_s
  sum = 0
  si = kapsq.size
  
  kapsq.split("").each do |n|
    sum += n.to_i
    puts sum
  end
  k == sum ? true : false
end

p kaprekar?(9)

