class NoteBook < ActiveRecord::Base
  attr_accessible :id, :title, :subTitle, :user_id

  has_many :notes
  has_many :plans
  belongs_to :user
end