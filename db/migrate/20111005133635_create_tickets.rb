class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
