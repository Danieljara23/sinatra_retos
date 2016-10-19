require 'sinatra'


get '/' do
  headers = Hash[*env.select {|k,v| k.start_with? 'HTTP_'}
    .collect {|k,v| [k.sub(/^HTTP_/, ''), v]}
    .collect {|k,v| [k.split('_').collect(&:capitalize).join('-'), v]}
    .sort
    .flatten]
  #puts headers
  @header = headers
  erb :index
end
