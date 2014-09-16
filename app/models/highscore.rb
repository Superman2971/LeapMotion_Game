class Highscore < ActiveRecord::Base
  validates_presence_of :initials
  validates_presence_of :score
end
