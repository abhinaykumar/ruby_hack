require "rubygems"
require "json"
require "net/http"
require "uri"
 
uri = URI.parse("https://ajax.googleapis.com/ajax/services/search/news?v=1.0&q=barack%20obama")
 
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true  # <-- this line is to handle EOFerror, since url is using HTTPS link.
request = Net::HTTP::Get.new(uri.request_uri)
 
response = http.request(request)
 
result = JSON.parse(response.body)
puts result