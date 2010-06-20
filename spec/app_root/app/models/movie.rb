class Movie < ActiveRecord::Base

  belongs_to :director
  belongs_to :producer
  belongs_to :prequel, :class_name => 'Movie'

  validates_presence_of :title, :year

end
