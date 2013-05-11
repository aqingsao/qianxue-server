require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'sinatra/json'
require 'sinatra/json'
require 'dm-core'
require 'dm-validations'
require 'dm-sqlite-adapter'

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

  before do
    puts '[Params]'
    p params
  end

  get '/template/:name' do
    slim :index, :layout=>
  end

  not_found do
  	slim "not_found".to_sym
  end

  register Sinatra::BooksResource
  register Sinatra::EntriesResource
end