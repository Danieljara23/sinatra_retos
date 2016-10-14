require 'sinatra'

get '/makers/:nombre' do
  "<h1>Hola #{params[:nombre].capitalize}!</h1>"
end
