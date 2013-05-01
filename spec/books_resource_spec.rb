require File.join(File.dirname(__FILE__), "spec_helper")

describe "books" do
  def app
    BooksResource
  end

  it 'return empty books when there are none' do
    get '/books'
    last_response.should be_ok
    last_response.body.should == '[]'
  end

  it 'return one book when there is one book' do
  	# Books
    get '/books'
    last_response.should be_ok
    last_response.body.should == '[]'
  end

end