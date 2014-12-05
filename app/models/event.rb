class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :start_is_before_end, on: :create
  validates :cannot_be_in_past, on: :create

  def start_is_before_end
    start_time > end_time
  end

  def cannot_be_in_past
    start_time < Date.today
  end
end
