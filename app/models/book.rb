class Book < ActiveRecord::Base
  attr_accessible :id, :title, :subTitle
  attr_accessible :subTitle, :title

  has_many :entries
end