class Ticket < ActiveRecord::Base
  Status = [['Aberto', 1],
            ['Em andamento', 2],
            ['Fechado', 3]]
end

