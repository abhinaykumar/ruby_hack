def hello(name)
	return "Hello,#{name}"
end
p hello("abhinay")


def starts_with_consonant?(s)
	/^(?![AEIOU])/i.match(s) ? true : false
	end

p starts_with_consonant?("abhinay")
p starts_with_consonant?("")


def binary_multiple_of_4?(s)
	false if /^[01]+$/.match(s).nil?
	/^[01]*00$/.match(s).nil? ? false : true
end

p binary_multiple_of_4?('01100101')



     	