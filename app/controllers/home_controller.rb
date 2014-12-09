class HomeController < ApplicationController
  skip_before_filter :logged_in, only: [:index, :weather]
  def index
  end

  def weather
  end
end
