# SuperStruct

SuperStruct overwrites the standard {Struct} initializer to add the ability to
create an instance from a {Hash} of parameters.

Compared with the original version, it provides the following additional
features:
  * ability to initialize an instance from Hash
  * ability to pass a block on creation

SuperStruct written by Simone Carletti for [whois](https://github.com/weppos/whois)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'superstruct'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install superstruct

## Usage

```ruby
class Band < SuperStruct.new(:name, :genre)
end
Band.new({name: 'The Beatles', genre: 'Rock'})
# => #<struct Band name="The Beatles", genre="Rock">
```
```ruby
@overload initialize({ Symbol => Object })
  Initializes the object with a key/value hash.
  @param [{ Symbol => Object }] values
  @return [SuperStruct]
@overload initialize([ value1, value1, ... ])
  Initializes the object with given values.
  @param [Array] values
  @return [SuperStruct]
@overload initialize(value1, value1, ...)
  Initializes the object with given values.
  @return [SuperStruct]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/martin-schmidt/superstruct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

