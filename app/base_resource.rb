
require File.join(File.dirname(__FILE__), 'resource_helper')

module My
  class BaseResource < Sinatra::Base

    Rabl.register!
    configure :development do
      DataMapper::Logger.new($stdout, :debug)
    end

    configure :production, :development do
      DataMapper.setup(:default, 'sqlite::memory:')
        # A MySQL connection:
        #DataMapper.setup(:default, 'mysql://user:password@hostname/database')
      # Skim::Engine.default_options[:use_asset] = true
    end
    DataMapper.auto_migrate!
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