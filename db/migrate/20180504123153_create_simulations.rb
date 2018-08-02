class CreateSimulations < ActiveRecord::Migration[5.2]
  def change
    create_table :simulations do |t|
      t.references :driver, foreign_key: true
      t.references :map, foreign_key: true
      t.references :measurment, foreign_key: true
      t.timestamps
    end
  end
end
