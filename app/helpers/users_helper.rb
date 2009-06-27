module UsersHelper
  def link_to_profile(user)
    return link_to user.username, user
    #return "user"
   end
end
