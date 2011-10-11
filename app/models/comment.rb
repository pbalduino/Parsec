class Comment < ActiveRecord::Base
  validates_presence_of :ticket_id
  validates_presence_of :comment
end
