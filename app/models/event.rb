class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :cannot_be_in_past?
  validate :start_is_before_end?

  def start_is_before_end?
    if end_time && start_time > end_time
      errors.add(:end_time, "can't be before start time")
    end
  end

  def cannot_be_in_past?
    if start_time < Date.today
      errors.add(:start_time, "can't be in the past")
    end
  end
end
