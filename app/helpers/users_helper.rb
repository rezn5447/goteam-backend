module UsersHelper
  def gen_token(user)
    payload = {data:user.id}
    token = JWT.encode payload, ENV['SECRET'], 'HS256'
  end

  def token_valid?(token)
    begin
      decoded_token = JWT.decode token, ENV['SECRET'], true, { :algorithm => 'HS256' }
    rescue
      render json: "Token is not valid."
    end
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
      avatar: user.avatar
      }
    end

    def user_exist?(token,user_id)
     user = User.find(user_id) if User.exists?(user_id)
     return user if user && find_token?(token,user)
     false
   end
 end

