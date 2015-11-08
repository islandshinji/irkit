require "net/http"
require "uri"

uri = URI.parse("http://api.getirkit.com/1/messages")
http = Net::HTTP.new(uri.host, uri.port)

messages = [
  'message of lightoff', # lightoff
]

request = Net::HTTP::Post.new(uri.request_uri)

messages.each{|message|
  request.set_form_data({
    "clientkey" => ENV['IRKIT_CLIENTLEY'],
    "deviceid" => ENV['IRKIT_DEVICEID'],
    "message" => message})
  response = http.request(request)
  puts response
}
