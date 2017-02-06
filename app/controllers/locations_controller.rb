class LocationsController < ApplicationController

  def index
    @locations = Location.all
    render :index
  end

  def show
    @location = Location.find_by_id(params[:id])
    all_activities = @location.activity_count
    @activity_cards = top_activities all_activities
    # render :show
  end

  private

  def top_activities acts
    top_five = []
    cards = []
    acts.values.sort.reverse.each do |i|
      top_five.push(acts.select{|k,v| v == i}).uniq!
    end
    top_five[0..5].each do |t|
      cards.push(Activity.find_by({name: t.keys[0]}))
    end
    cards
  end

end
