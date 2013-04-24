
# require 'rubygems'
# require 'bundler/setup'
# require 'sinatra/base'
# require 'dm-core'
# require 'dm-core'
# require 'dm-validations'
# require 'slim'
require File.join(File.dirname(__FILE__), 'base-resource')

class Todo
  include DataMapper::Resource
  property :id,         Serial
  property :title,      String
  property :created_at, DateTime
  property :complete,   Boolean, :default=>false

  validates_present :title
end

class TodosResource < BaseResource
  get '/' do
    slim :index
  end
  get '/hi' do
    'Hi'
  end
  get '/todos' do
  	@todos=Todo.all :order=>[:created_at]
  	slim :index
  end
end