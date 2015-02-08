class User
  attr_accessor :name, :email, :username, :type, :courses
  
  def initialize (name, email=nil, username=nil)
    @name = name
	@email = email
	@username = username
	@type = 1
	@courses = 8
  end
  
  def valid?
    return true if @email and @username
	return false
  end
  
  def kill!
    #self = nil
  end
end