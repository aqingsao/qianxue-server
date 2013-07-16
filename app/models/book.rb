class Book < ActiveRecord::Base
  attr_accessible :id, :title, :subTitle
  attr_accessible :subTitle, :title

  has_many :entries
  has_and_belongs_to_many :users

end