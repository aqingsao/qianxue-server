require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'dm-core'
require 'dm-validations'
require 'dm-sqlite-adapter'
require 'dm-migrations'
require 'slim'

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

    not_found do
        "not found"
    end
  end
end