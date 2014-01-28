require 'sinatra'
require 'bundler'


class LandingPageApp < Sinatra::Base

  get '/' do
    "Welcome to fucking Planting Season you fucking scumbag!!!!"       
  end
  run! if app_file == $0

end
