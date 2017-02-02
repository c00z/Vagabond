class Location < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :users, through: :posts

  # Add to the location model...note: we probably want to change the default sizes

  has_attached_file :avatar, styles: { medium: "1000x400>", thumb: "250x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
