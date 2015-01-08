# require 'rubygems'
# require 'nokogiri'
# require 'open-uri'
# require 'json'

# page = Nokogiri::HTML(open('http://en.wikipedia.org/wiki/Iso_3166-1'))
# # blogcontent = ""

# puts page.at('table.wikitable.sortable.jquery-tablesorter tbody tr')

# # require "rubygems"
# # require "json"
# # require "net/http"
# # require "uri"

# # uri = URI.parse("http://en.wikipedia.org/wiki/Iso_3166-1")

# # http = Net::HTTP.new(uri.host, uri.port)
# # # http.use_ssl = true  # <-- this line is to handle EOFerror, since url is using HTTPS link.
# # request = Net::HTTP::Get.new(uri.request_uri)

# # response = http.request(request)

# # result = JSON.parse(response.body)
# # puts result.to_json
# doc = Nokogiri::HTML(open('http://en.wikipedia.org/wiki/Iso_3166-1'))
# rows = doc.css('#mw-content-text > table.wikitable.sortable.jquery-tablesorter > tbody > tr:nth-child(1)')
# puts rows
# details = rows.collect do |row|
#   detail = {}
#   [
#     [:country, 'td[1]/a/text()'],
#     [:numeric, 'td[4]/a/text()'],
#     [:iso, 'td[5]/a/text()'],
#   ].each do |name, xpath|
#     detail[name] = row.at_xpath(xpath).to_s.strip
#   end
#   detail
# end
# pp details



require 'nokogiri'
require 'open-uri'
require 'pp'
require 'rest_client'


response = RestClient.get "http://en.wikipedia.org/wiki/Iso_3166-1"
doc = Nokogiri::HTML(response.body,nil,'utf-8')
doc.remove_namespaces!
File.open("./use.html","w") do |file|
  file.puts doc
end



# table = doc.xpath("//*[@id='mw-content-text']/table[1]/tbody/tr[1]")
# puts table