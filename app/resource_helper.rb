require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'dm-core'
require 'dm-validations'
require 'dm-sqlite-adapter'
require 'dm-migrations'
require 'slim'
require 'multi_json'
require 'rabl'
require 'oj'

Dir.glob(File.join(File.dirname(__FILE__), "../model/*.rb")).each{|file| require file}