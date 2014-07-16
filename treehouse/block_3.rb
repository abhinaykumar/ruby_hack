def header(&block)
	puts "this is header"
	block.call
rescue
	puts "this is rescue error."
ensure 
	puts "this is our footer"
end

header do
	puts "this is header."
	raise "this is an error"
end