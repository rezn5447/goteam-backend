require 'bcrypt'

class User < ApplicationRecord

  has_many :stats
  has_many :userteams
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  before_save :generate_token

  validates :email, :password_hash, :first_name, :last_name, :street, :city, :state, :zip, :phone, presence: true
  validates :email, :password_hash, uniqueness: true
  validates :token, uniqueness: true
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

  protected

  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless User.exists?(token: random_token)
    end
  end

end
