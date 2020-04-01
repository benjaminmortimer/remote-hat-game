require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do
	erb :index
end

post '/form' do 
	form_data = params["form_data"]
	File.open("./data/data.txt", "a") { |file| file.puts(form_data) }
	redirect to '/'
end