def sya_hello(&block)
	puts "hello"
	
	name = block.call
    puts "#{name}"
	
end

sya_hello do
	puts "this is inside"
	"Jason"
end