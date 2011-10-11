class Ticket < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  Status = [['Aberto', 1],
            ['Em andamento', 2],
            ['Fechado', 3]]

  validates_presence_of :user_id
end

