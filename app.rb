require 'rubygems'
require 'sinatra'
require 'data_mapper'
require 'dm-migrations'
require './email'
require 'pry'


DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/dev.db")
DataMapper.finalize.auto_upgrade!

get '/' do
    erb :landing, locals: {email: Email.new}      
end

post '/' do
  email = Email.new(email: params[:email][:email], created_at: Time.now)
  if email.save
    erb :success
  else
    erb :failure
  end

end

get '/email' do
  @emails = Email.all
  erb :emails_index
end



