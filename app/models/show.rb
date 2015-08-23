class Show < ActiveRecord::Base

  belongs_to :event
  has_one :venue, :through => :event

  has_many :tickets


  def tickets_sold
    tickets.all.sum(:num_of_general)
  end

  def tickets_remaining
    venue.capacity - tickets_sold
  end

  def availability?(num_of_general)
    tickets_remaining - num_of_general >= 0
  end

end
