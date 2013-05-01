require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'sinatra/json'
require 'sinatra/json'
Dir.glob(File.join(File.dirname(__FILE__), "*_resource.rb")).each{|file| require file}

class App < Sinatra::Base
  helpers Sinatra::JSON
  # set :json_encoder, Yajl::Encoder
  configure :development do
  	DataMapper::Logger.new($stdout, :debug)
  end

  configure :production, :development do
  	DataMapper.setup(:default, 'sqlite::memory:')
  end

  not_found do
  	content_type :json
  	"not found".to_json
  end

  register Sinatra::BooksResource
  register Sinatra::EntriesResource
end