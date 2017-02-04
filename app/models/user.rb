class User < ApplicationRecord
  
  validates :user_name, presence: true, uniqueness: true, length: {minimum: 4}
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 5}


  has_many :posts, dependent: :destroy
  has_many :locations, through: :posts

  has_secure_password
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "200x200>" }, default_url: "/assets/:style/missing_avatar.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end


end
