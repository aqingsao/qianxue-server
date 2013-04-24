require 'rubygems'
require 'bundler'
require 'sinatra/base'

Bundler.require

Dir.glob("app/*-resource.rb").each{|file| require file}

map('/example'){run BaseResource}
map('/'){run TodosResource}