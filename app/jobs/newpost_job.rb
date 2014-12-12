class NewpostJob
  @queue = :email
  def self.perform
    PpatchMailer.new_post.deliver
  end
end
