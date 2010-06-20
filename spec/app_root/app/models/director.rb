class Director < ActiveRecord::Base

  validates_presence_of :name

  has_many :movies

end
