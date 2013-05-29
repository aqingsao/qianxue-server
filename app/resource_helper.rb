require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'sinatra/content_for'
require 'sinatra/json'
require 'dm-core'
require 'dm-validations'
require 'dm-sqlite-adapter'
require 'dm-serializer/to_json'
require 'dm-migrations'
require 'slim'

Dir.glob(File.join(File.dirname(__FILE__), "../model/*.rb")).each{|file| require file}