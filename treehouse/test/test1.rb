require 'minitest/autorun'

class MyTest < Minitest::Unit::TestCase
    def test_that_addition_works
    	assert_equal 4, 2+2
    end

    def test_that_my_array_has_a_value
    	my_array = %w(dog cat frog)
    	assert my_array.include?('frog')
    end

    def test_assert_delta
    	assert_in_delta 3.14159, 3, 0.2
    end

    def test_assert_match
    	assert_match /world/, 'hello world'
    end

    def test_nil
    	some_variable = nil
    	assert_nil some_variable
    end
    def test_output
    	assert_output "hello", nil do
    		print 'hello'
    	end
    end

    def test_raise
    	#this_variable_doesnt_exsist = 'hello'
    	assert_raises NameError do
    		this_variable_doesnt_exsist
    	end
    end

    def test_repond
    	assert_respond_to Array.new, 'include?'
    end

end