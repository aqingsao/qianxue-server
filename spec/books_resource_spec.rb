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
  		:title => 'title', 
      :subTitle => "sub title"
  	)

    get '/api/books'
    last_response.should be_ok
    actual = JSON.parse(last_response.body)
    actual.length.should == 1
    actual[0]["id"].should == book.id
    actual[0]["title"].should == book.title
    actual[0]["subTitle"].should == book.subTitle
  end
end