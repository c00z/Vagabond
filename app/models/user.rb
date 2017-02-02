class User < ApplicationRecord

  validates :user_name, presence: true, uniqueness: true, length: {minimum: 4}
  validates :email, presence: true, uniqueness: true
  # validates :password, presence: true, length: {minimum: 5}


  has_many :posts, dependent: :destroy
  has_many :locations, through: :posts

  has_secure_password

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end


end
