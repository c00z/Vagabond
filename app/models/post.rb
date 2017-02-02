class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 1, maximum: 200}
  validates :content, presence: true, length: {minimum: 100, maximum: 2000}
  belongs_to :user
  belongs_to :location

  def speechify(blabber_duration=1)
    FFaker::HipsterIpsum.sentence(blabber_duration)
  end

end
