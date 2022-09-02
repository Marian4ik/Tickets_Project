class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.integer :worker_id
      t.string :state
      t.timestamps
    end
  end
end
