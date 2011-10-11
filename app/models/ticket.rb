class Ticket < ActiveRecord::Base
  belongs_to :user

  Status = [['Aberto', 1],
            ['Em andamento', 2],
            ['Fechado', 3]]
end

