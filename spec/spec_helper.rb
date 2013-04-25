require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)
require 'sinatra'

require 'dm-core'
require 'dm-validations'
require 'dm-sqlite-adapter'

require 'rack/test'
require 'test/unit'

Sinatra::Base.set :environment, :test

DataMapper.setup(:default, 'sqlite::memory:')

puts "Start loading resources...."
Dir.glob(File.join(File.dirname(__FILE__), "../app/*_resource.rb")).each{|file| require file}
