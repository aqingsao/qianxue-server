
require File.join(File.dirname(__FILE__), 'base_resource')

module My
  class Book
    include DataMapper::Resource
    property :id,         Serial
    property :name,      String
    property :created_at, DateTime
    property :updated_at, DateTime

    validates_presence_of :name
  end

  class BooksResource < BaseResource
    get '/books/:id' do
      @entry = Entry.find(:id)
      'Hi'
    end
    get '/books' do
    	@books=Book.all :order=>[:created_at]
    	"[]"
    end
  end
end