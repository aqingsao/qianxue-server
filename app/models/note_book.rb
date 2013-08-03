class NoteBook < ActiveRecord::Base
  attr_accessible :id, :name, :description, :user_id

  has_many :notes
  has_and_belongs_to_many :tags
  belongs_to :user

  def notesCount
  	notes.length
  end
end