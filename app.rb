require 'rubygems' 
require 'sinatra' 

get '/', params={:p=>120} do
	redirect "http://www.jennifersmith.co.uk/blog/2009/05/29/spark-codec-for-openrasta/index.html"
end

get '/*' do 
	haml :catchall
end

