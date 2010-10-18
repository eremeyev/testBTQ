require 'test_helper'

class UserStoriesTest < ActionController::IntegrationTest
  fixtures :all

  def test_capture_information
    get "/"
    assert_response :success
    assert_template "information"
    post "processing", 
      :client => {
        :name => "x",
        :surname => "x",
        :email => "x@x.com",
        :residential_address => "x",
        :billing_address => "x",
        :dob => clients(:one).dob
       }
    assert_response :success
    assert_template "processing"
    post "processing" # empty form
    assert_response :success
    assert_template "information"
    
  end

end
