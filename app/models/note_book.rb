class NoteBook < ActiveRecord::Base
  attr_accessible :id, :name, :description, :user_id

  has_many :notes
  # has_many :plans
  belongs_to :user
end