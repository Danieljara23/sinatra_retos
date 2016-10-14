require 'sinatra'

get '/' do
  @sum= 0
  erb :index
end

post '/' do
  @sum = params[:sum].to_i
  erb :index
end
