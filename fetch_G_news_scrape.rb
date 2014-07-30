require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://news.google.co.in/'))

puts doc.css('div.esc-lead-article-title-wrapper a')