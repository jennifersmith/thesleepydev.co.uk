require File.dirname(__FILE__) + '/spec_helper'

describe "App" do

  it "should respond to /?p=120 to correct article" do
    get '/?p=120'
		last_response.should be_redirect
		last_response.headers["Location"].should == 'http://www.jennifersmith.co.uk/blog/2009/05/29/spark-codec-for-openrasta/index.html'
  end
	it "should send all other requests to the catchall view" do
		get "/foo"
		response.should have_selector "#catchallredirect"
	end
end
