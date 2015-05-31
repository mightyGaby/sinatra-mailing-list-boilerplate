require 'bundler'
Bundler.require()

# ** Connection **
ActiveRecord::Base.establish_connection(
  adapter: :postgresql,
  database: :bikeracks
)

# ** Models **
require './models/subscriber'

get '/' do
  erb :index
end

# ** Routes **

post '/subscribers' do
  @subscriber = Subscriber.create(params[:subscriber])
  @subscriber.to_json
  redirect '/'
end
