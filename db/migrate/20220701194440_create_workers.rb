class CreateWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :worker do |t|
      t.string :Last_Name
      t.string :First_Name, null: false
      t.integer :Age
      t.string :Role
      t.boolean :Active

      t.timestamps
    end
  end
end
