require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  
  test "should get information" do
    get "information"
    assert_response :success
    assert_not_nil assigns(:client)
  end

  test "should get processing" do
    post :processing, 
      :client => { 
        :name => "2",
        :surname => "2",
        :email => "2@2.com",
        :residential_address => "2",
        :billing_address => "2",
        :dob => Time.local(1990,1,1)
      }
        
    assert_response :success
    assert_not_nil assigns(:client)
    assert_select "products", :count => 1 
    assert_select "product", :count => 2 
    assert_select "name", :count => 2 
    assert_select "price", :count => 2 
  end

end
