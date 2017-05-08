require './test/test_helper'

class Ethereumpos::GemTest < Minitest::Test

  @new_order_id = "0"

  def test_set_api_keys
    ::Ethereumpos::Configuration.configure do |config|
      config.api_key = "TESTMODEAPIkey"
      config.api_secret = "TESTMODEAPIkey"
      config.test_mode = true
    end
    assert ::Ethereumpos::Configuration.version == 1
  end


  def test_create_order
    order = {
        amount: "33.50",
        address: "0x9eif0939di3dii32diojwedfjhijhiodjoiwejo",
        callback: ""
    }
    @response = ::Ethereumpos::Order.create(order)
    @new_order_id = @response['id']
    puts "New Order ID: #{@new_order_id}"
    puts "Order Expected Amount: #{@response['expected_amount']} ETH \n"
    assert@response['currency_amount'] == "33.50"
  end



  def test_get_order
    @response = ::Ethereumpos::Order.get("716101452")
    puts "Order Status: #{@response['status']} \n"
    puts "Order Expected Amount: #{@response['expected_amount']} ETH \n"
    assert@response['currency_amount'] == "33.50"
  end




end
