require 'rubygems'
require 'bundler'
require 'sinatra/base'

Bundler.require

Dir.glob(File.join(File.dirname(__FILE__), "app/*_resource.rb")).each{|file| require file}
Dir.glob(File.join(File.dirname(__FILE__), "app/*_resource.rb")).each{|file| require file}

map('/example'){run My::BaseResource}
map('/books'){run My::BooksResource}