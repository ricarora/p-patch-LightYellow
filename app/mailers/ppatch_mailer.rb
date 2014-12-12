class PpatchMailer < ActionMailer::Base
  default from: "rr.p.patch@gmail.com"

  def sign_up(user_id)
    @user = User.find(user_id)
    mail(
    to: [@user.email],
    bcc: "rr.p.patch@gmail.com",
    subject: "Welcome!"
    )
  end

  def new_post(post)
    @users = User.where.not(email: nil)
    @users = @users.collect {|user| user.email}
    mail(
    to: @users,
    bcc: "rr.p.patch@gmail.com",
    subject: "New Read: #{post.title}!"
    )
  end
end
