class NewpostJob
  @queue = :email
  def self.perform(blogpost)
    PpatchMailer.new_post(blogpost).deliver
  end
end
