

class BookInStock
 attr_accessor :isbn
 attr_accessor :price

   def initialize(isbn, price)
     raise ArgumentError,'isbn empty' if isbn.empty?
     raise ArgumentError,'price must be floating-point num' unless price.is_a? Numeric
     raise ArgumentError,'Price should greater than 0' if price <= 0

     @isbn = isbn
     @price = price
 end

 def price_as_string
 	'$' +"%.2f" % price
 end
end

b = BookInStock.new('isbn',50.50)

puts b.isbn
puts b.price

b.isbn= '1245sdfsdf'
b.price= 20.1

puts b.isbn
puts b.price
 
p b.price_as_string