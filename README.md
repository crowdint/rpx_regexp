# RPX_Regexp

Whenever we want to authenticate users on a Rails app, we like to go
with [Janrain](http://www.janrain.com/) + [Devise](https://github.com/plataformatec/devise).

To achieve this we use [this excelent gem](https://github.com/slainer68/devise_rpx_connectable)
that just makes everything very easy.

Sometimes we like to do our own apps where only users in our domain
have access, and we use this gem to make sure Janrain and Devise
only authenticates our users.

## Usage

Add the gem to your Gemfile or require it depending on what you are
using.

Then, just set your email RegExp somewhere on your code:

    RPXNow.email_regexp = /@crowdint.com$/

For rails, you can put it on an initializer. Since this is
authentication code, I usually put it on *initializers/devise.rb*

# About the Author

[Crowd Interactive](http://www.crowdint.com) is a Ruby and Rails consultancy firm
powered by a team of enthusiast engineers who love programming.
We turn your ideas into web applications, and we like challenging projects. We also have
a lot of experience in retail, so it doesn't matter if your idea is about
something you'd like to sell, we can surely help you.

