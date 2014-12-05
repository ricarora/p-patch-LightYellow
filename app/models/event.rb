class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :start_time, presence: true, if: :cannot_be_in_past
  validates :end_time, presence: true, if: :start_is_before_end

  def start_is_before_end
    if start_time > end_time
    end
  end

  def cannot_be_in_past
    if start_time < Date.today
    end
  end
end
