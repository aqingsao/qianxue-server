require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'dm-core'
require 'dm-validations'
require 'dm-sqlite-adapter'
require 'dm-migrations'
require 'slim'

Dir.glob(File.join(File.dirname(__FILE__), "../model/*.rb")).each{|file| require file}