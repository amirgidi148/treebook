require 'test_helper'

class CostumRoutesTest < ActionDispatch::IntegrationTest
  test " That /login route open the login page " do 
		get '/login'
		assert_response :success 
  end
  test " That /logout route open the logout page " do 
		get '/logout'
		assert_response  :success #:redirect
		# assert_redirected_to "/" 
  end
  test " That /register route open sign-up page " do

  		get '/register'
  		assert_response  :success
  end

end
