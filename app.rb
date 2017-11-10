require 'sinatra'

$message
$comando
get '/' do
  erb :menu 
end


get '/gameOption' do
  erb :opcionJuego 
end


get '/game' do
  $message="Elige una jugada: moverse 'M', lanzar flecha 'F' o usar sprite 'S'."
  erb :juego
end

post '/game' do
  $comando= params[:instruccion].to_s
  erb :juego
end

