class CreateWaiters < ActiveRecord::Migration
  def change
    create_table :waiters do |t|
      t.string :name
      t.string :gender
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
