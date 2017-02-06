class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find_by_id(params[:id])
    all_activities = @location.activity_count
    @activity_cards = top_activities all_activities
    p @activity_cards
  end

  private

  def top_activities acts
    top_five = []
    acts.values.sort.reverse.each do |i|
      top_five.push(acts.select{|k,v| v == i}).uniq!
    end
    top_five[0..4]
  end

end
