require 'spec_helper'
require 'user'

describe User do
  it "checks a user responds to name, email and username" do
	user = User.new("Andres Lopez", "agldeleon@gmail.com", "andywarrior")
	user.name.should == "Andres Lopez" and
	user.email.should == "agldeleon@gmail.com" and
	user.username.should == "andywarrior"
  end
  
  it "checks invalidation when there is no username or email" do
	user = User.new("Andres Lopez")
	user.valid?.should == false
  end
  
  it "checks that a user can be a teacher" do
	user = User.new("Andres Lopez", "agldeleon@gmail.com", "andywarrior")
	user.type = 1
	user.type.should == 1
  end
  
  it "checks that a user can be a student" do
	user = User.new("Andres Lopez", "agldeleon@gmail.com", "andywarrior")
	user.type = 2
	user.type.should == 2
  end
  
  it "checks a user has many courses" do
	user = User.new("Andres Lopez", "agldeleon@gmail.com", "andywarrior")
	user.courses.should >= 1
  end
  
end