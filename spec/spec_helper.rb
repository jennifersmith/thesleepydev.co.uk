require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'rubygems'
require 'sinatra'
require 'rack/test'
require 'webrat'

module MyHelpers
  def app
    Sinatra::Application
  end
end

Webrat.configure do |config|
  config.mode = :rack
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include Webrat::Methods
  config.include Webrat::Matchers
  config.include MyHelpers
end

# set test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false
