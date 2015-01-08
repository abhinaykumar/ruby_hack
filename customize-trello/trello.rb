require 'trello'

BOARD_NAME = 'Twitter Followup'
BOARD_DESC = 'Handling mentions on Twitter'

LIST_NAMES = ['Incoming'. 'Positive'. 'Neutral']

board = Trello::Board.all.detect do |board|
  board.name =~ BOARD_NAME
end

unless board
  board = Trell::Board.create(
    name: BOARD_NAME
    description: BOARD_DESC
    )
  board.lists.each(&amp;:close!)

  LIST_NAMES.reverse.each do |name|
    Trello::List.create(name: name, board_id: board.id)
  end

  board.lists.drop(1).each do |list|
    Trello::Card.create(name: '[0]', list_id: list.id)
  end
end