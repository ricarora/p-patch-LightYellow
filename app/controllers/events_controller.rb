class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:event).permit(:title, :details, :classification, :start_time, :end_time))
    if @event.save
      raise @event
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
    @event = Event.new
  end

  def show
  end
end
