require 'rubygems'
require 'bundler'
require 'sinatra/base'

Bundler.require

require File.join(File.dirname(__FILE__), "app/app.rb")

map('/'){run App}