
require File.join(File.dirname(__FILE__), 'resource_helper')

module My
  class BaseResource < Sinatra::Base

    configure :development do
      DataMapper::Logger.new($stdout, :debug)
    end

    configure :production, :development do
      DataMapper.setup(:default, 'sqlite::memory:')
        # A MySQL connection:
        #DataMapper.setup(:default, 'mysql://user:password@hostname/database')
    end

    get '/template/:name' do
      slim :index
    end

    not_found do
        "not found"
    end
  end
end