class Event < ActiveRecord::Base

  has_many :shows
  belongs_to :venue

end
