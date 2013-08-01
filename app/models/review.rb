class Review < ActiveRecord::Base
  attr_accessible :user_id, :note_id, :status
  belongs_to :user
  belongs_to :note
  STATUS = { too_easy: 0, easy: 1, medium: 2, difficult: 3, too_difficult: 4 }

  def status
    STATUS.key(read_attribute(:status))
  end
 
  def status=(s)
    write_attribute(:status, STATUS[s.to_sym])
  end
end
