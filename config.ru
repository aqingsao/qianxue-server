#require 'rubygems'
#require 'bundler'
#require 'sinatra/base'
#
#Bundler.require
#
#Dir.glob(File.join(File.dirname(__FILE__), "app/*_resource.rb")).each{|file| require file}
#
#use Rack::Static, :urls => ["/css", "/images", "/js", "/template"], :root => "public"
#
#run Rack::Cascade.new([My::BooksResource, My::EntriesResource])

# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Qianxue2::Application
