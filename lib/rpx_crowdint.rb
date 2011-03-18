require 'rpx_now'

module RPXNow
  alias_method :user_data!, :user_data

  attr_accessor :email_regexp

  def user_data(token, options={})
    result = user_data!(token, options={})
    result["email"].match(self.email_regexp) ? result : nil
  end
end
