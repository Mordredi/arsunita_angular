class Ticket < ActiveRecord::Base
  belongs_to :show
  belongs_to :event, :through = :show

  belongs_to :subscription
  belongs_to :user, :through => :subscription
end
