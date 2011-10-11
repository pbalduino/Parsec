require 'spec_helper'

describe User do
  it "Adding a new user" do
    User.create!(:email => 'test@test.com', :password => '123456', :password_confirmation => '123456')

    User.find_by_email('test@test.com').should be

  end

  it "Trying to add duplicate users" do
    User.create!(:email => 'test@test.com', :password => '123456', :password_confirmation => '123456')
    lambda {User.create!(:email => 'test@test.com', :password => 'whatever', :password_confirmation => 'whatever')}.should raise_error ActiveRecord::RecordInvalid

  end

  it "Trying to add user with invalid password" do
    lambda {User.create!(:email => 'test@test.com', :password => '123456', :password_confirmation => 'whatever')}.should raise_error ActiveRecord::RecordInvalid
  end

  it "Cannot add user without password" do
    lambda {User.create!(:email => 'test@test.com')}.should raise_error ActiveRecord::RecordInvalid
  end
end
