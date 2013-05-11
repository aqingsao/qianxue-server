class Book
  include DataMapper::Resource

  property :id,         Serial
  property :name,       String
  property :created_at, DateTime, :default=> Time.new
  property :updated_at, DateTime

  has n, :entries

  validates_presence_of :name
end