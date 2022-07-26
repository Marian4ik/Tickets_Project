class AddWorkerIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :worker, index: true

  end
end
