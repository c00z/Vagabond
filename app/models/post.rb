class Post < ApplicationRecord
  belongs_to :user
  belongs_to :location

  def speechify(blabber_duration=1)
    FFaker::HipsterIpsum.sentence(blabber_duration)
  end

end
