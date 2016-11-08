module UsersHelper
  def find_token?(token,user)
    return true if token == user.token
    false
  end

  def pass_user_params(user)
    {id: user.id,
      email: user.email,
      first_name: user.first_name,
      last_name: user.last_name,
      street: user.street,
      city: user.city,
      state: user.state,
      zip: user.zip,
      phone: user.phone,
      token: user.token}
    end

    def user_exist?(token,user_id)
     user = User.find(user_id) if User.exists?(user_id)
     return user if user && find_token?(token,user)
     false
   end
 end

