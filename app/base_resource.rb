require File.join(File.dirname(__FILE__), 'resource_helper')

module My
  class BaseResource < Sinatra::Base
    helpers Sinatra::ContentFor
    helpers Sinatra::JSON
    
    configure :development do
      DataMapper::Logger.new($stdout, :debug)
    end

    configure :production, :development do
      dbFile = File.expand_path(File.join(File.dirname(__FILE__), '../tmp/dev.db'))
      DataMapper.setup(:default, 'sqlite://' + dbFile)
    end
    set :json_encoder, :to_json

    before /api\/*/ do
      content_type :json
    end

    get '/template/:name' do
      slim "#{params[:name]}".to_sym
    end

    not_found do
        "not found"
    end
  end
end