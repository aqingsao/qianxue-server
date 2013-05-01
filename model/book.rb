class Book
  include DataMapper::Resource

  property :id,         Serial
  property :name,      String
  property :created_at, DateTime
  property :updated_at, DateTime

  has n, :entries

  validates_presence_of :name
end