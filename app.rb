require 'rubygems' 
require 'sinatra' 

get '/' do
	params_to_match = ["120"]
	pass unless params_to_match.include? params[:p]
	redirect "http://www.jennifersmith.co.uk/blog/2009/05/29/spark-codec-for-openrasta/index.html"
end

get '/*' do 
	haml :catchall
end

