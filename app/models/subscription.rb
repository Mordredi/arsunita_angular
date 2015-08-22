class Subscription < ActiveRecord::Base
  belongs_to :user

  before_create :initial_discount, :set_year

  def set_year
    self.year = Time.now().year
  end

  def initial_discount
    if user.age >= 65 || user.arts_worker || user.student
      self.discount = 10
    end
  end

end
