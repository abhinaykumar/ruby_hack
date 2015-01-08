#!usr/env/ ruby
require 'nokogiri'
require 'open-uri'
# require 'openssl'

# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

def get_data_from_github(id)
  page = Nokogiri::HTML(open("https://github.com/#{id}"))
  # fullname = page.css('body.logged_out.env-production.linux.page-profile
  # div.wrapper div.header.header-logged-out div.container.clearfix
  # div.command-bar.js-command-bar ul.top-nav li.explore a')
  fullname = page.css('span.vcard-fullname').text
  { user: fullname }
end

# require 'net/https'
# require 'nokogiri'
# id = "abhinaykumar"
# url = "https://github.com/#{id}"
# url = URI.parse( url )
# http = Net::HTTP.new( url.host, url.port )
# http.use_ssl = true if url.port == 443
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE if url.port == 443
# path = url.path
# path += "?" + url.query unless url.query.nil?
# res, data = http.get( path )

# case res
# when Net::HTTPSuccess, Net::HTTPRedirection
#   # parse link
#   doc = Nokogiri::HTML(data)
#   fullname = doc.css('body.logged_out.env-production.linux.page-profile
# div.wrapper div.site.clearfix div#site-container.context-loader-container
# div.container div.columns.profilecols.js-username div.column.one-fourth.vcard
# hi.vcard-names span.vcard-fullname')
#   puts "#{fullname}"

# else
#   return "failed" + res.to_s
# end
