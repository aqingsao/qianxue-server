class Entry < ActiveRecord::Base
  attr_accessible :description, :name, :note_book_id

  belongs_to :noteBook
end
