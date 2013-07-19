class NoteBook < ActiveRecord::Base
  attr_accessible :id, :title, :subTitle

  has_many :notes
  has_many :plans
  has_many :users, :through => :plans

end