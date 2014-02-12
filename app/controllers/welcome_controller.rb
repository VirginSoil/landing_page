class WelcomeController < ApplicationController
  def index
    @email = Email.new
    @host_path = request.original_url
  end
end
