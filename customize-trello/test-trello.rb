require 'trello'

TRELLO_DEVELOPER_PUBLIC_KEY = "6159ec70180f5e9ebec92b73438b39e0"
TRELLO_MEMBER_TOKEN = "3e006a52fc4dfa50b2062d74244bdce88f4f94271ddc7fa72858377a112da12a"

Trello.configure do |trello|
  trello.developer_public_key = TRELLO_DEVELOPER_PUBLIC_KEY
  trello.member_token = TRELLO_MEMBER_TOKEN
end

Trello::Board.all.each do |board|
  puts "* #{board.name}"
end