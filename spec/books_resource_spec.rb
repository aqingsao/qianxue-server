require File.join(File.dirname(__FILE__), "spec_helper")

describe "books" do
  def app
    My::BooksResource
  end

  it 'return empty books when there are none' do
    get '/books'
    last_response.should be_ok
    last_response.body.should == 'books'
  end
  # it 'return 1 books when there is 1' do
  # 	book = Book.create(
  # 		:name => 'first book'
  # 	)

  #   get '/books'
  #   last_response.should be_ok
  #   last_response.body.should == 'books'
  # end
end