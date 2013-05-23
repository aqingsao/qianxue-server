require File.join(File.dirname(__FILE__), "spec_helper")

describe "books" do
  def app
    My::BooksResource
  end
  before(:each) do
    DataMapper.auto_migrate!
  end
  it 'return empty books when there are none' do
    get '/api/books'
    last_response.should be_ok
    last_response.body.should == '[]'
  end
  it 'return 1 books when there is 1' do
  	book = Book.create(
  		:name => 'first book'
  	)

    get '/api/books'
    last_response.should be_ok
    last_response.body.should == '[]'
  end
end