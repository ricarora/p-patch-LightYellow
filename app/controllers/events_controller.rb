class EventsController < ApplicationController
  skip_before_filter :logged_in, only: [:index, :show, :calendar]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:event).permit(:title, :details, :classification, :start_time, :end_time))
    if @event.save
      redirect_to calendar_path
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @events = Event.all.order(:start_time)
  end

  def calendar
    # @event = Event.new
    events = Event.all
    @events = events.collect do |e|
      {
        id: e.id,
        text: e.title,
        start: e.start_time,
      end: e.end_time
    }
    end
  end

  def show
  end
end
