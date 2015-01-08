require 'net/http'

TRELLO_DEVELOPER_PUBLIC_KEY="6159ec70180f5e9ebec92b73438b39e0" # found at https://trello.com/1/appKey/generate
url = "https://trello.com/1/authorize?key=#{TRELLO_DEVELOPER_PUBLIC_KEY}&amp;name=abhinaykumar1&amp;expiration=never&amp;response_type=token&amp;scope=read,write"
resp = Net::HTTP.get_response(URI.parse(url)) # get_response takes an URI object
# https://api.trello.com/1/members/me/boards?key=6159ec70180f5e9ebec92b73438b39e0&token=edcec0e263fabdf82f67ef679a172021801066845543132c66759cb110ee1370
data = resp.body
# ac485f7e6272f2a519b705ea1a1583d0
puts "#{data}"