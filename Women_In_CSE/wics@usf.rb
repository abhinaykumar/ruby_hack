#!/usr/bin/env ruby
require 'pony'
require 'sinatra/base'
# require 'data_mapper'

# DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/recall.db")

# class Note
#   include DataMapper::Resource
#   property :id, Serial
#   property :content, Text, required: true
#   property :complete, Boolean, required: true, default: false
#   property :created_at, DateTime
#   property :updated_at, DateTime
# end

# DataMapper.finalize.auto_upgrade!

get '/' do
  # @notes = Note.all order: :id.desc
  # @title = 'WICSE@USF'
  erb :home
end

post '/feedback' do
  name = params[:name]
  email = params[:email]
  message = params[:message]
  "I got #{name}, #{email}, #{message}"
  # redirect '/'
end