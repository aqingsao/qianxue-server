class Entry < ActiveRecord::Base
  attr_accessible :description, :name

  belongs_to :book
end
