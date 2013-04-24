
require File.join(File.dirname(__FILE__), 'base_resource')

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