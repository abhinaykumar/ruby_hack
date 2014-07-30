require 'erb'

jaaga = {
	name: 'abhinay',
	location: 'bang'
}

template = <<-TEMPLATE
from the desk of <%= jaaga[:name] %>
--------------------------------
Welcome to <%= jaaga[:location] %>.
---------------------------
<% jaaga.keys.each do |key| %>
	Key: <%= key %>
	<% end %>
TEMPLATE

erb = ERB.new(template)
puts erb.result