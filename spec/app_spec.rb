require File.dirname(__FILE__) + '/spec_helper'

describe "App" do

  it "should respond to /?p=120 to correct article" do
    get '/?p=120'
		last_response.should be_redirect
		last_response.headers["Location"].should == 'http://www.jennifersmith.co.uk/blog/2009/05/29/spark-codec-for-openrasta/index.html'
  end
	it "should respond to /?p=120 to correct article" do
    get '/?p=265'
		last_response.should be_redirect
		last_response.headers["Location"].should == 'http://www.jennifersmith.co.uk/blog/2011/03/27/qcon-2011-friday-session-node-js-asynchronous-io-for-fun-and-profit/index.html'
  end
	it "should redirect requests for / directly to jennifersmith.co.uk" do
	  get "/"
		last_response.should be_redirect
		last_response.headers["Location"].should == 'http://www.jennifersmith.co.uk'
	end
	it "should send all other requests to the catchall view" do
		get "/foo"
		response.should have_selector "#catchallredirect"
		get "/?p=101010"
		response.should have_selector "#catchallredirect"
	end
end
