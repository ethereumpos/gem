# Ethereum Point of Sale Gem

EthereumPOS is a Point of Sale system for merchants and developers who want to accept Ethereum on their website or application. Using Ethereum blockchain you'll be able to confirm transactions quicker than with the bloat of the Bitcoin blockchain. EthereumPOS allows online shopping carts and applications to receive a callback to confirm the customer paid in full.

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

