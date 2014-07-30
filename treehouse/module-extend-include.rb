class Hello
	def initialize(name)
		@name = name
	end
end
module SayHello
	def say_hello
		puts "hello #{@name}"
	end
end
hello = Hello.new("AKS")
hello.extend SayHello
hello.say_hello

#For keyword "include"
module SayHello
	def say_somehting
		puts "somehting"
	end
	def say_hello
		puts "hello #{@name}"
	end
end

class Hello
	extend SayHello
	include SayHello

	def initialize(name)
		@name = name
	end
end

hello = Hello.new("AKS")

hello.say_hello
Hello.say_somehting