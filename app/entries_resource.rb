
require File.join(File.dirname(__FILE__), 'base_resource')

module My
  class Entry
    include DataMapper::Resource
    property :id,         Serial
    property :title,      String
    property :created_at, DateTime

    validates_presence_of :title
  end

  class EntriesResource < BaseResource
    get '/' do
      slim :index
    end
    get '/entries/:id' do
      @entry = Entry.find(:id)
      'Hi'
    end
    get '/entries' do
    	@todos=Todo.all :order=>[:created_at]
    	slim :index
    end
  end
end