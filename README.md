# Ethereumpos::Gem

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/ethereumpos/gem`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ethereumpos-gem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ethereumpos-gem

## Usage

### Configuration
```ruby
Ethereumpos::Configuration.configure do |config|
  config.api_key = "TESTMODEAPIkey"
  config.api_secret = "TESTMODEAPIkey"
  config.test_mode = true
end
```

### Creating New Order
```ruby
order = {
    amount: "33.50",
    address: "0x9eif0939di3dii32diojwedfjhijhiodjoiwejo",
    callback: ""
}
response = Ethereumpos::Order.create(order)
puts "New Order ID: #{@response['id']}"
puts "Pay To Address: #{@response['address']} \n"
puts "Order Expected Amount: #{@response['expected_amount']} ETH \n"
```

### Information About Order
```ruby
response = Ethereumpos::Order.get("716101452")
puts "Order Status: #{response['status']} \n"
puts "Pay To Address: #{@response['address']} \n"
puts "Order Expected Amount: #{response['expected_amount']} ETH \n"
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

