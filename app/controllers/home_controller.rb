class HomeController < ApplicationController
  skip_before_filter :logged_in, only: [:index, :weather]
  def index
    @events = Event.all.order(:start_time)[0..5]
    @blogposts = Blogpost.all.order(:created_at)[0..3]
  end

  def weather
  end
end
