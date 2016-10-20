require 'sinatra'



get '/' do
  if request.env["HTTP_PERMISO"] == "soy-un-token-secreto"
    puts "Si lo logramos!"
  else
    puts "Sin Permiso"
  end
end
