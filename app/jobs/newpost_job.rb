class NewpostJob
  @queue = :email
  
  def self.perform(blogpost_id)
    PpatchMailer.new_post(blogpost_id).deliver
  end
end
