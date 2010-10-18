require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  def test_invalid_with_empty_attributes
    client = Client.new
    assert !client.valid?
    assert client.errors.invalid?(:name)
    assert client.errors.invalid?(:surname)
    assert client.errors.invalid?(:residential_address)
    assert client.errors.invalid?(:billing_address)
    assert client.errors.invalid?(:email)
  end

  def test_valid_email
    client = Client.new(
      :name => 'Name', 
      :surname => 'Surname', 
      :dob => Time.local(1990,5,5),
      :residential_address => 'Address1', 
      :billing_address => 'Address2' 
    )
    client.email = 'aaa'
    assert !client.valid?
    client.email = '@'
    assert !client.valid?
    client.email = 'a@a'
    assert !client.valid?
    client.email = 'ccc@aaa.com'
    assert client.valid?
  end
  
  def test_unique_email
    client = Client.new(
      :name => 'Name', 
      :surname => 'Surname', 
      :dob => Time.local(1990,5,5),
      :residential_address => 'Address1', 
      :billing_address => 'Address2',
      :email => clients(:one).email
    )
    assert !client.save
  end
end
