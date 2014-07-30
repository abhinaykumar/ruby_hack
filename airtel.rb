#<img src="/account/LTEDonglePage/ShowPieChartServlet?param=8861307326">
#https://ebpp.airtelworld.com/account/LTEDonglePage/ShowPieChartServlet?param=8861307326

#Shoes.app :width => 400, :height => 200 do
 # image 'https://ebpp.airtelworld.com/account/LTEDonglePage/ShowPieChartServlet?param=8861307326'
#end
require "open-uri"

open("https://ebpp.airtelworld.com/account/LTEDonglePage/ShowPieChartServlet?param=8861307326") {|f|
  File.open("ShowPieChartServlet.jpg","wb") do |file|
    file.puts f.read
 end
}
#require 'rubygems'
#require 'mechanize'

#agent = Mechanize.new
#link = 'https://ebpp.airtelworld.com/account/LTEDonglePage/ShowPieChartServlet.png?param=8861307326'
#agent.get(link).save "pic.png" 