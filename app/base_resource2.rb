require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'json'
# require 'yajl-ruby'
require 'dm-core'
require 'dm-validations'
require 'dm-sqlite-adapter'
require 'slim'

class BaseResource < Sinatra::Base
  # helpers Sinatra::JSON
  # set :json_encoder, Yajl::Encoder

  configure :development do
  	DataMapper::Logger.new($stdout, :debug)
  end

  configure :production, :development do
  	DataMapper.setup(:default, 'sqlite::memory:')
  end
  get '/' do
  	'home page'
  end

  not_found do
  	"not found"
  end
end