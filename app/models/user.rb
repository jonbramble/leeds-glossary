class User < ActiveRecord::Base
 has_many :topics
 
 acts_as_authentic do |c|
    c.login_field = :email
  end

 def name
  fname+" "+lname
 end
end
