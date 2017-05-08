require 'uri'
require 'net/http'
require 'json/ext'
require 'openssl'

module Ethereumpos
  module Order

  @endpoint = "https://testapi.ethereumpos.com"
  @test_mode = false


  def self.create(order)
    url = URI(@endpoint+"/order")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Post.new(url)
    request["Authorization"] = 'gifs56d63999f0f34'
    request["Content-Type"] = 'application/json'
    request.body = order.to_json

    response = http.request(request)
    return JSON.parse(response.read_body)
  end


  def self.get(order)
    url = URI(@endpoint+"/order/#{order}")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    request["Authorization"] = 'gifs56d63999f0f34'
    request["Content-Type"] = 'application/json'
    response = http.request(request)
    return JSON.parse(response.body)
  end

  end
end