require 'bcrypt'

class User < ApplicationRecord

  has_many :stats
  has_many :userteams
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  validates :email, :password_hash, :first_name, :last_name, :street, :city, :state, :zip, :phone, presence: true
  validates :email, :password_hash, uniqueness: true
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  # validates :avatar, attachment_presence: true


  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email,password)
    user = User.find_by(email: email.strip)
    if user && (user.password == password)
      return user
    end
    return nil
  end

  def self.update_user(params,user)
    user.email = params[:email] if params[:email]
    user.first_name = params[:first_name] if params[:first_name]
    user.last_name = params[:last_name] if params[:last_name]
    user.street = params[:street] if params[:street]
    user.city = params[:city] if params[:city]
    user.state = params[:state] if params[:state]
    user.zip = params[:zip] if params[:zip]
    user.phone = params[:phone] if params[:phone]
    user.avatar = params[:avatar] if params[:avatar]

    if user.save
      user
    else
      user.errors.full_messages
    end
  end

end
