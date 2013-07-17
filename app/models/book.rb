class Book < ActiveRecord::Base
  attr_accessible :id, :title, :subTitle

  has_many :entries
  has_many :plans
  has_many :users, :through => :plans

end