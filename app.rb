require 'rubygems' 
require 'sinatra' 

get '/' do
	redirects_by_param = {
		nil => "http://www.jennifersmith.co.uk",
		"120"=> "http://www.jennifersmith.co.uk/blog/2009/05/29/spark-codec-for-openrasta/index.html",
		"265"=> "http://www.jennifersmith.co.uk/blog/2011/03/27/qcon-2011-friday-session-node-js-asynchronous-io-for-fun-and-profit/index.html"
	}
  p_param = params[:p]
	pass unless redirects_by_param.has_key? p_param
	redirect redirects_by_param[p_param]
end

get '/*' do 
	haml :catchall
end

