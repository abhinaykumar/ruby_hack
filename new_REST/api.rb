#!usr/bin/env ruby

require_relative('functions')
require 'sinatra'
require 'json'

get '/' do
  erb :home
end

post '/show' do
  results = get_data_from_github(params[:github_id])
  content_type :json
  erb results.to_json
end
