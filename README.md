# fg-quickgenerate v1.0.0 (FactoryGirl addon)

Hello fellas! This gem was create to made easy way of creating quick sequences in FactoryGirl.

## Installation

Add this line to your application's Gemfile:

    gem 'fg-quickgenerate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fg-quickgenerate

## Usage

First of all, require fg-quickgenerate below FactoryGirl require, like that:

    require 'factory_girl'
    require 'fg-quickgenerate'

After require you will be able to create simple sequentials like:
    
		FactoryGirl.define do
		  factory :user do
			  name { sequential("myname") }
			  email { sequential("myemail#N@email.com") }
			end
		end


Doing this, your tests will look like that:

		u1 = build(:user)
		u1.name # myname1
		u1.email # myemail1@email.com

		u2 = build(:user)
		u2.name # myname2
		u2.email # myemail2@email.com



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
