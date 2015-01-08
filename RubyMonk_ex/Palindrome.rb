# Given a sentence, return true if the sentence
# is a palindrome, You are supposed to write a method
# palindrome? to accomplish this task.
# Note :: Ignore whitespce and cases of characters.
# Ex: "Never odd or even" the method should return true.

require 'benchmark'

#def palindrome?(sentence)
#sentence.downcase.delete(' ').reverse == sentence.downcase.delete(' ') ? true : false
#end

#p palindrome?("Never odd or even")


# 2 Method for same

def palindrome2?(sentence)
sentence.downcase.gsub(/\s+/,'').reverse == sentence.downcase.gsub(/\s+/,'') ? true : false
end

p palindrome2?("i am abhinay")

# 3 method for above

def palindrome3?(sentence)
sentence.downcase.gsub(/[' ']/,'').reverse == sentence.downcase.gsub(/[' ']/,'') ? true : false
end

p palindrome3?("Never odd or even")

iterations = 100_000
Benchmark.bm do |bm|

#bm.report do
#iterations.times do
#palindrome?("Never odd or even")
#end
#end

bm.report do
iterations.times do
palindrome2?("Never odd or even")
end
end

bm.report do
iterations.times do
palindrome3?("Never odd or even")
end
end
end
