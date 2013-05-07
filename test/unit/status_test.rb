require 'test_helper'

class StatusTest < ActiveSupport::TestCase
	test "That status requiers content" do 
		status = Status.new
		assert  !status.save
		assert !status.errors[:content].empty?
	end
	test "That status's content is at least 2 letters" do
		status = Status.new
		status.content = "A"
		assert !status.save
		assert !status.errors[:content].empty?
	end	
	test "That status has a user " do 
		status = Status.new
		status.content = "Hello"
		assert !status.save
		assert !status.errors[:user_id].empty?
	end

	
end
