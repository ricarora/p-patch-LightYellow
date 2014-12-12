class NewpostJob
  @queue = :email
  def self.perform(id)
    PpatchMailer.new_post(id).deliver
  end
end
