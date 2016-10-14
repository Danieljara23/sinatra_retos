require 'sinatra'

get '/' do
  @name = params[:name]
  erb :index
end

post '/new/user' do
  "¡Hola #{params[:username]}!"
end
