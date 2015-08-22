class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :subscriptions

  before_create :determine_age

  def determine_age
    self.age = ((Time.now - birthday) / 31536000).floor
  end
end
