# CEX.io Websocket

This gem is a simple implementation for [CEX.io](https://cex.io/websocket-api) websocket API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cexio-websocket'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install cexio-websocket
```

## Configuration

Default configuration:

`config/initializers/cex.rb`

```ruby
CEX::Websocket.setup do |config|
  config.uri = 'wss://ws.cex.io/ws/'
end
```

## Usage

```ruby
client = CEX::Websocket::Client.new
client.listen_tickers do |message|
  puts message
end
```

This code will output:

```json
{"e":"connected"}
{"e":"tick","data":{"symbol1":"ETH","symbol2":"USD","price":"997.0053","open24":"926.8021","volume":"10043.73349200"}}
```

## TODO

Current version only implements `listen tickers` method.

Next versions features:

* Authentication
* Signature generation
* Implement private methods

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [cexio-websocket](https://github.com/psyipm/cexio-websocket).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
