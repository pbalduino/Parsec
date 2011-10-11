require 'spec_helper'

describe Comment do
  it "must have a comment" do
    lambda{Comment.create!}.should raise_error
  end
end
