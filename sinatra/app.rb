require 'sinatra'
get '/' do
  "Hello World"
end

get '/secret' do
  "This is a secret page"
end

get '/weather' do
  "It's going to rain"
end

get '/random-hamster' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-hamster' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/hamster-form' do
  erb(:hamster_form)
ends