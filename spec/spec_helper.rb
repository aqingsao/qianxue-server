require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)
require 'sinatra'

require 'dm-core'
require 'dm-validations'
require 'dm-sqlite-adapter'

require 'rack/test'
require 'rspec'

Sinatra::Base.set :environment, :test

DataMapper.setup(:default, 'sqlite::memory:')

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

Dir.glob(File.join(File.dirname(__FILE__), "../app/*_resource.rb")).each{|file| require file}
