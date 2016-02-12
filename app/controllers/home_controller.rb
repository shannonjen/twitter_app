class HomeController < ApplicationController
  def index
  end
  def search
  	client = Twitter::REST::Client.new do |config|
  		config.consumer_key    = ENV['CONSUMER_KEY']
  		config.consumer_secret = ENV['CONSUMER_SECRET']
		end
		@results = client.search(params[:query])
		render "index"
  	
  end
end
