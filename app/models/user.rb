class User < ActiveRecord::Base
  has_many :ticket_items
end
