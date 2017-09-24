# Horus

![Horus Eye](https://d30y9cdsu7xlg0.cloudfront.net/png/27083-200.png)

Rails Ready OpenWeather API gem, named after the Egyptian sky god

## Installation

Add this line to your `Gemfile`:

```ruby
gem 'horus'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install horus

## Usage

First, you need to init the API:

### Rails

```ruby
# config/initializers/horus.rb

# Note that 'config' is an instance of `Horus::API` (just name it as you like).
Horus.configure do |config|
  # API key
  config.api_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

  # Optionals
  config.default_language = 'ar'     # 'en' by default
  config.default_country_code = 'eg' # nil by default (ISO 3166-1 alfa2)
  config.default_units = 'metric'    # 'metric' by default
end
```

Outside of the configuration file, you can access the `api` object as follows:

````ruby
Rails.configuration.horus
````

# Usage

## Current Weather

By city name:

````ruby
json = horus.current city: 'Berlin', country_code: 'de'
````

By city id:

````ruby
json = horus.current id: 1234567
````

By multiple cities ids:

````ruby
json = horus.current id: [1234567, 7654321]
````

By geolocation:

````ruby
json = horus.current lon: -51.20302, lat: 32.53924
````

By zipcode:

````ruby
json = horus.current zipcode: 17111, country_code: 'eg'
````

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec ---` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### TODO

1. Write RSpec tests

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wazery/horus.
