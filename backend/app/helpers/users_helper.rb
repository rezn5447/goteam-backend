module UsersHelper
  def find_token?(token,user)
    return true if token == user.token
    false
  end
end

