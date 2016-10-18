require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  frase = params[:text]
  if frase == frase.upcase
    @res = "Ahhh si, manzanas!"
  else
    @res = "Habla más duro mijito"
  end
  erb :respuesta
end
