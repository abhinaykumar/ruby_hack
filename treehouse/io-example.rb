File.open("./my_file.txt", "aa+") do |file|
  file.puts "Hello,world"
end


File.open("./my_file.txt", "a+") do |file|
	file.puts "Hello"
end


puts IO.readlines('my_file.txt')
