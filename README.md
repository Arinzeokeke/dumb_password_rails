# dumb_password_rails

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dumb_password_rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dumb_password_rails

## Usage

Add this line to your model:
    validates :password, dumb_password: true

(replace :password with your own custom virtual password attribute if yours is different. If you are using Devise, your virtual password attribute is :password.)

The default error message is "Your password is too common. Use a more secure password". If yo;d like to add your own custom message. 
    validates :password, dumb_password: {message: <YOUR CUSTOM MESSAGE>}






## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Arinzeokeke/dumb_password_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

