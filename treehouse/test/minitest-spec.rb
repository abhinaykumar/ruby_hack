require 'minitest/autorun'
require 'minitest/spec'

describe 'MyTests' do
    before do
    	puts "Test are beggining"
    end

	it "adds 2+2" do
		(2+2).must_equal 4
	end

	it "include a frog" do
		%w(dog frog).must_include('frog')
	end

	it "must be a fixnum" do
		(2+2).must_be_instance_of Fixnum
	end

	it "should  raise an error" do
		array = []
		proc { array.hello }.must_raise NoMethodError
	end

end