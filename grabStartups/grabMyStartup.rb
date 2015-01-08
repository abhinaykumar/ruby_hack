require 'open-uri'
require 'nokogiri'
require 'uri'

page = Nokogiri::HTML(open('http://bangalore.startups-list.com'))

# links = page.css('a')
# links = page.css("a[class='startup']")
links = page.css('div#wrap a')
# links.each do |link|
#   puts link['href']
# end

# links.each do |link|
#   puts URI(link).host
# end


# def get_domain(url)
#   url = "http://#{url}" if URI.parse(url).scheme.nil?
#   host = URI.parse(url).hostname
#   host.sub(/^www\./i, '')
# end

# s = "http://github.com"
links.each do |link|
  links1 = URI(link)
end

links1.each do |links11|
  puts links11.hostname
  end