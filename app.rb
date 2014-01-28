require 'sinatra'
require 'rubygems'
require 'bundler'
require 'data_mapper'
require 'dm-sqlite-adapter'
require 'dm-core'

DataMapper::Database.setup({
  :adapter  => 'sqlite3',
  :host     => 'localhost',
  :username => 'asdf',
  :password => 'asdf',
  :database => 'db/my_way_development'
})


class LandingPageApp < DataMapper::Base

  get '/' do
    "Welcome to Planting Season!!!!"       
  end
  run! if app_file == $0

end
