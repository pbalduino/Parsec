require 'spec_helper'

describe Ticket do
  it "must have an user" do
    lambda{Ticket.create!}.should raise_error
  end
end

