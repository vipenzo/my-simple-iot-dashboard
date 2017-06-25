require 'sinatra'
require 'sinatra/reloader'

get '/' do
  redirect to("/index")
end

get '/index' do
   @songs = [{title: 'Fly Me To The Moon', url: "https://www.youtube.com/watch?v=mQR0bXO_yI8"},
            {title: 'New York, New York', url: "https://www.youtube.com/watch?v=btFfXgUdIzY"},
            {title: 'My Way', url: 'https://www.youtube.com/watch?v=6E2hYDIFDIU'},
            {title: 'The Way You Look Tonight', url: 'https://www.youtube.com/watch?v=h9ZGKALMMuc'},
            {title: 'I Get A Kick Out Of You', url: 'https://www.youtube.com/watch?v=wSrHvNr8QQQ'}]
  erb :default
end

