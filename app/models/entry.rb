require 'dm-serializer/to_json'

class Entry < ActiveRecord::Base
  include DataMapper::Resource

  property :id,         Serial
  property :title,      String
  property :created_at, DateTime

  validates_presence_of :title
end
