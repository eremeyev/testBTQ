class Client < ActiveRecord::Base
  validates_presence_of :name, :surname, :dob, :residential_address, :billing_address, :on => :create
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_uniqueness_of :email, :on => :save
end
