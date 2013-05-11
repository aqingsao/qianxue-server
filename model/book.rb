class Book
  include DataMapper::Resource

  property :id,         Serial
  property :name,      String
  property :created_at, DateTime, :default=> Date.new
  property :updated_at, DateTime
  # property :title,     String,  :required => true   # Cannot be nil
  # property :published, Boolean, :default  => false  # Default value for new records is false
  # property :old_id, Integer, :key => true
  # property :md5sum, String,   :length => 32, :default => lambda { |r, p| Digest::MD5.hexdigest(r.path.read) if r.path }
  # property :notes, Text,   :lazy => false  # Isn't lazy, will load by default
  # property :status, Enum[ :new, :open, :closed, :invalid ], :default => :new

# Boolean
# String (default length limit of 50 characters)
# Text (defaults to lazy loading and length limit of 65535 characters)
# Float
# Integer
# Decimal
# DateTime, Date, Time
# Object, (marshalled)
# Discriminator
# Binary (inherits default length limit of 50 characters from String)

  # property :title, String, :accessor => :private    # Both reader and writer are private
  # property :body,  Text,   :accessor => :protected  # Both reader and writer are protected
  # property :title, String, :writer => :private    # Only writer is private
  # property :tags,  String, :reader => :protected  # Only reader is protected

  # set all String properties to have a default length of 255
  # DataMapper::Property::String.length(255)


  has n, :entries

  validates_presence_of :name
end