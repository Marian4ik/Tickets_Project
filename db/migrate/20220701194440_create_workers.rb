class CreateWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :workers do |t|
      t.string :last_name
      t.string :first_name, null: false
      t.integer :age
      t.string :role
      t.boolean :active

      t.timestamps
    end
  end
end
