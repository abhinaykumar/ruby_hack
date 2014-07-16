def sya_hello(&block)
	puts "hello"
	block.call
end

sya_hello do
	puts "hello, again"
end 