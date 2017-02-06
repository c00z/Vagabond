class Location < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :users, through: :posts

  # Add to the location model...note: we probably want to change the default sizes

  has_attached_file :avatar, styles: { medium: "1000x400>", thumb: "250x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def activity_count
    activity_counter = {}
    self.posts.each do |p|
      p.activities.each do |a|
        if activity_counter.has_key?(a.name)
          activity_counter[a.name] += 1
        else
          activity_counter[a.name] = 1
        end
      end
    end
    activity_counter
  end

  # def top_activities acts
  #   top_five = []
  #   acts.values.sort.reverse.each do |i|
  #     top_five.push(acts.select{|k,v| k == i})
  #   end
  #   top_five[0..4]
  #   binding.pry
  # end
end
