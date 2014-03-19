class Attendance < ActiveRecord::Base
  belongs_to :user
  belongs_to :show, :include => [:venue]

  validates_uniqueness_of :user_id, :scope => [:show_id]
end
