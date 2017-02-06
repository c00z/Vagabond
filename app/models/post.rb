class Post < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  validates :title, presence: true, length: {minimum: 1, maximum: 200}
  validates :content, presence: true, length: {minimum: 1, maximum: 2000}
  belongs_to :user
  belongs_to :location
  has_and_belongs_to_many :activities

  def address
    self['addr']
  end

  def speechify(blabber_duration=1)
    FFaker::HipsterIpsum.sentence(blabber_duration)
  end

end
