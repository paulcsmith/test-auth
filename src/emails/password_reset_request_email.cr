class PasswordResetRequestEmail < BaseEmail
  def initialize(@user : User)
    @token = Authentic.generate_password_reset_token(@user)
  end

  to @user
  from "myapp@support.com" # or set a default in src/emails/base_email.cr
  subject "Reset your password"
  templates html, text
end
