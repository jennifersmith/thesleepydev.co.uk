require 'rubygems' 
require 'sinatra' 

get '/*' do 
	haml :catchall
end

