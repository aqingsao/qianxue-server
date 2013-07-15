class Entry < ActiveRecord::Base
  attr_accessible :description, :name, :book_id

  belongs_to :book
end
