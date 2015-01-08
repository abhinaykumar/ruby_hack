require 'csv'
require 'json'
# require 'awesome_print'

data = File.read('./Web_URL.txt')

puts CSV.parse(data).to_json
# pretty = CSV.parse(data).to_json # pritn using Awesome Print

# ap pretty
